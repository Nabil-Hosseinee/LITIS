<?php

$mot = $_POST['mot'];

include('connect_bdd.php');

$defStatement = $db->prepare("SELECT * FROM glossaire WHERE Mot = :motTap");
$defStatement->bindParam(':motTap', $mot, PDO::PARAM_STR);
$defStatement->execute();
$def = $defStatement->fetchAll(PDO::FETCH_ASSOC);

echo "
    <h1>Votre mot choisi est $mot</h1>
    <ul>";

foreach ($def as $row) {
    foreach ($row as $key => $value) {
        echo "<li>$key : $value</li>";
    }
}

echo "</ul>";

echo "<br>";



// //////////////////////////////////////////////////////////////////////////
// Construction de la requête SQL pour récupérer les synonymes du mot tapé quand le mot est un mot de la table
// //////////////////////////////////////////////////////////////////////////

// Construire la requête SQL
$sql = "SELECT Mot, Definition";
for ($i = 1; $i <= 10; $i++) { // Supposons qu'il y ait jusqu'à 10 synonymes possibles
    $sql .= ", SPLIT_STRING(Synonyme, ',', $i) AS Synonyme$i";
}
$sql .= " FROM glossaire WHERE Mot = :mot";

$reqStatement = $db->prepare($sql);
$reqStatement->bindParam(':mot', $mot, PDO::PARAM_STR);
$reqStatement->execute();
$req = $reqStatement->fetchAll(PDO::FETCH_ASSOC);

$synonymes = array();

foreach ($req as $row) {
    foreach ($row as $key => $value) {
        if (strpos($key, 'Synonyme') === 0 && !empty($value)) {
            $synonymes[$key] = $value;
        }
    }
}

echo "<h2> Liste des synonymes liés au mot tapé :</h2>";

echo "<pre>";
print_r($synonymes);
echo "</pre>";

echo "<br>";
echo "<br>";



// //////////////////////////////////////////////////////////////////////////
// Construction de la requête SQL pour récupérer les ressources
// Fonctionne et remonte les ressources où le titre et les mots clés sont composés du mot tapé par l'utilisateur
// //////////////////////////////////////////////////////////////////////////

$sqlRessources = "SELECT * FROM ressource WHERE ";
foreach ($synonymes as $key => $value) {
    // Convertir les titres de ressources et les synonymes en minuscules
    $sqlRessources .= "(LOWER(Titre) LIKE '%" . strtolower($value) . "%' OR LOWER(Mot_cle) LIKE '%" . strtolower($value) . "%') OR "; 
}
// Ajouter le mot tapé par l'utilisateur à la requête
$sqlRessources .= "(LOWER(Titre) LIKE '%" . strtolower($mot) . "%' OR LOWER(Mot_cle) LIKE '%" . strtolower($mot) . "%')";

$reqStatementRessources = $db->prepare($sqlRessources);
$reqStatementRessources->execute();
$ressources = $reqStatementRessources->fetchAll(PDO::FETCH_ASSOC);

echo '<br>';


// Affichage des ressources trouvées
echo "
<h2>Liste des ressources liées au mot tapé :</h2>
<ul>";
foreach ($ressources as $ressource) {
    echo "<li>" . $ressource['Titre'] . "</li>";
}
echo "</ul>";

echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";







// //////////////////////////////////////////////////////////////////////////
// Construction de la requête SQL pour récupérer les mots associés au synonyme tapé
// //////////////////////////////////////////////////////////////////////////

// Recherche du mot associé au synonyme dans la table de synonymes
$statementSynonyme = $db->prepare("SELECT * FROM glossaire WHERE Synonyme LIKE :motRecherche");
$motRecherche = "%$mot%";
$statementSynonyme->bindParam(':motRecherche', $motRecherche, PDO::PARAM_STR);
$statementSynonyme->execute();
$resultSynonymes = $statementSynonyme->fetchAll(PDO::FETCH_ASSOC);

echo "
<h2>Liste des mots associés à ce synonyme :</h2>
<ul>";

if ($resultSynonymes) {
    foreach ($resultSynonymes as $resultSynonyme) {
        echo '<li>' .' Mot associé trouvé : '. $resultSynonyme['Mot'] . '</li>';
        echo "<ul>";
        echo '<li>' . 'Définition : ' . $resultSynonyme['Definition'] . '</li>';
        echo "</ul>";
    }
    echo "</ul>"; 
} else {
    echo "Aucun mot associé trouvé pour le synonyme '$mot'";
    echo "</ul>";
}

?>