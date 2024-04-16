<?php
// Vérifier si un mot a été saisi dans la barre de recherche
if (isset($_POST['mot'])) {
    $mot = $_POST['mot'];

    // Connexion à la base de données (à remplacer avec vos informations de connexion)
    $dsn = 'mysql:host=localhost;dbname=litis';
    $username = 'root';
    $password = '';

    try {
        $db = new PDO($dsn, $username, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Vérifier si le mot est un synonyme
        $statementSynonyme = $db->prepare("SELECT * FROM glossaire WHERE Synonyme LIKE :motRecherche");
        $motRecherche = "%$mot%";
        $statementSynonyme->bindValue(':motRecherche', $motRecherche, PDO::PARAM_STR);
        $statementSynonyme->execute();
        $resultSynonymes = $statementSynonyme->fetchAll(PDO::FETCH_ASSOC);

        if ($resultSynonymes) {
            // Récupérer tous les mots associés au synonyme
            $motsAssocies = array();
            foreach ($resultSynonymes as $resultSynonyme) {
                $mot = $resultSynonyme['Mot'];
                $definition = $resultSynonyme['Definition'];
                $synonymes = $resultSynonyme['Synonyme']; // Supposons que les synonymes soient stockés dans la colonne 'Synonyme' sous forme de chaîne séparée par des virgules
                $motsAssocies[$mot] = array('definition' => $definition, 'synonymes' => $synonymes);
            }

            echo "<ul>";
            foreach ($motsAssocies as $mot => $data) {
                $definition = $data['definition'];
                $synonymes = $data['synonymes'];
                $synonymesArray = explode(',', $synonymes); // Convertir la chaîne de synonymes en tableau

                // Construire la chaîne des synonymes entre parenthèses
                $synonymesString = '(' . implode(', ', $synonymesArray) . ')';

                echo "<li><strong>$mot $synonymesString :</strong> $definition</li>";
            }
            echo "</ul>";


            // Récupérer les ressources où le titre ou les mots-clés contiennent le mot saisi par l'utilisateur
            $sqlRessources = "SELECT * FROM ressource WHERE ";
            $sqlRessources .= "Titre LIKE :mot OR ";
            $sqlRessources .= "Mot_cle LIKE :mot ";

            // Ajouter les conditions pour chaque synonyme
            foreach ($motsAssocies as $i => $motAssocie) {
                $sqlRessources .= "OR Titre LIKE :motAssocie$i OR Mot_cle LIKE :motAssocie$i ";
            }

            $statementRessources = $db->prepare($sqlRessources);
            $statementRessources->bindValue(':mot', "%$mot%", PDO::PARAM_STR);

            // Lier chaque synonyme à la requête
            foreach ($motsAssocies as $i => $motAssocie) {
                $statementRessources->bindValue(":motAssocie$i", "%$i%", PDO::PARAM_STR); // Utiliser la clé $i comme valeur
            }
            

            $statementRessources->execute();
            $ressources = $statementRessources->fetchAll(PDO::FETCH_ASSOC);

            // Afficher les ressources trouvées
            if ($ressources) {
                echo "<h2>Ressources associées :</h2>";
                echo "<ul>";
                foreach ($ressources as $ressource) {
                    echo "<li>" . $ressource['Titre'] . "</li>";
                }
                echo "</ul>";
            } else {
                echo "Aucune ressource trouvée pour le mot '$mot'";
            }
        } else {
            // Si le mot n'est pas un synonyme, vérifier s'il existe dans la table glossaire
            $statementMot = $db->prepare("SELECT * FROM glossaire WHERE Mot = :mot");
            $statementMot->bindValue(':mot', $mot, PDO::PARAM_STR);
            $statementMot->execute();
            $resultMot = $statementMot->fetch(PDO::FETCH_ASSOC);

            if ($resultMot) {

                $mot = $resultMot['Mot'];
                $definition = $resultMot['Definition'];
                
                // Afficher le mot et sa définition
                echo "<h2>$mot</h2>";
                echo "<p>$definition</p>";


                // Récupérer les ressources où le titre ou les mots-clés contiennent le mot saisi par l'utilisateur
                $sqlRessources = "SELECT * FROM ressource WHERE ";
                $sqlRessources .= "Titre LIKE :mot OR ";
                $sqlRessources .= "Mot_cle LIKE :mot ";
                $statementRessources = $db->prepare($sqlRessources);
                $statementRessources->bindValue(':mot', "%$mot%", PDO::PARAM_STR);
                $statementRessources->execute();
                $ressources = $statementRessources->fetchAll(PDO::FETCH_ASSOC);

                // Afficher les ressources trouvées
                if ($ressources) {
                    echo "<h2>Ressources associées :</h2>";
                    echo "<ul>";
                    foreach ($ressources as $ressource) {
                        echo "<li>" . $ressource['Titre'] . "</li>";
                    }
                    echo "</ul>";
                } else {
                    echo "Aucune ressource trouvée pour le mot '$mot'";
                }
            } else {
                // Si le mot n'est pas un synonyme ni un mot de la table glossaire
                echo "Aucun résultat trouvé pour le mot '$mot'";
            }
        }
    } catch (PDOException $e) {
        echo "Erreur de connexion à la base de données : " . $e->getMessage();
    }
}
?>
