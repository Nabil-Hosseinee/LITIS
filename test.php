<?php
include('connect_bdd.php');

if (isset($_GET['Id_ressource'])) {
    $id_ressource = $_GET['Id_ressource'];
    // Maintenant vous pouvez utiliser $id_ressource pour votre logique
    echo "ID de la ressource: " . htmlspecialchars($id_ressource);
    // Ajoutez ici votre code pour traiter l'ID de la ressource

    // Préparation de la requête
    $sql = $db->prepare("SELECT * FROM ressource_type WHERE ressource_id = :id_ressource");
    // Liaison du paramètre
    $sql->bindParam(':id_ressource', $id_ressource, PDO::PARAM_INT);
    // Exécution de la requête
    $sql->execute();
    // Récupération du résultat
    $result = $sql->fetch(PDO::FETCH_ASSOC);

    // Affichage du résultat
    echo "<pre>";
    var_dump($result);
    echo "</pre>";

    if ($result) {
        // Supposons que la colonne 'youtube_url' contient l'URL de la vidéo YouTube
        if (isset($result['video'])) {
            // Conversion de l'URL classique en URL intégrée
            $youtube_url = $result['video'];
            if (preg_match('/(?:youtu\.be\/|youtube\.com\/(?:watch\?v=|embed\/|v\/|.*?[&?]v=))([^"&?\/ ]{11})/', $youtube_url, $matches)) {
                $embed_url = 'https://www.youtube.com/embed/' . $matches[1];
                echo $embed_url;
            } else {
                // Si l'URL est déjà au format intégré
                $embed_url = $youtube_url;
            }

            echo "<div>";
            echo "<h3>" . htmlspecialchars($result['titre_video']) . "</h3>"; // Supposons que la colonne 'title' contient le titre de la vidéo
            echo "<iframe width='560' height='315' src='" . htmlspecialchars($embed_url) . "' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>";
            echo "</div>";
        }
    } else {
        echo "Aucune ressource trouvée pour cet ID.";
    }
    
} else {
    echo "ID de la ressource non spécifié.";
}
?>

