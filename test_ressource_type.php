<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "Litis";

// Connexion à la base de données
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$id_ressource_type = isset($_GET['id']) ? intval($_GET['id']) : 1;

// Récupérer les données du tutoriel
$sql = "SELECT * FROM ressource_type WHERE id = $id_ressource_type";
$result = $conn->query($sql);
$tutorial = $result->fetch_assoc();

// Récupérer les étapes du tutoriel
$sql = "SELECT * FROM etape WHERE id_ressource_type = $id_ressource_type ORDER BY step_number";
$etape = $conn->query($sql);

// Récupérer la catégorie
$sql = "SELECT name FROM ressource WHERE id = " . $tutorial['ressource_id'];
$ressource_results = $conn->query($sql);
$category = $ressource_results->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/general.css">
    <link rel="stylesheet" href="./assets/css/ressource_type.css">
    <script src="https://cdn.lordicon.com/lordicon.js"></script>
    <title>Existence Numérique | Ressources</title>
</head>
<body>

    <header class="desktop d-flex justify-content-evenly align-items-center bg-white fixed-top">
        <!-- ... header content ... -->
    </header>

    <header class="phone d-flex flex-column align-items-center bg-white fixed-top">
        <!-- ... phone header content ... -->
    </header>

    <!-- Titre -->
    <div class="title">
        <h1><?php echo htmlspecialchars($tutorial['title']); ?></h1>
        <p>Catégorie: <?php echo htmlspecialchars($category['name']); ?></p>
        <div class="underline title_underline"></div>
    </div>

    <!-- Vidéo -->
    <div class="tuto image_wrapper">
        <video src="<?php echo htmlspecialchars($tutorial['video_url']); ?>" controls></video>
    </div> 

    <!-- separator -->
    <div class="bar"></div>

    <!-- Étapes -->
    <div class="etape">
        <?php while($step = $etape->fetch_assoc()): ?>
            <h2><?php echo htmlspecialchars($step['step_title']); ?></h2>
            <p><?php echo nl2br(htmlspecialchars($step['step_description'])); ?></p>
            <br><br>
        <?php endwhile; ?>
    </div>

    <div class="container text-center">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <a href="#"><button class="btn fw-bold btn-resource">Télécharger</button></a>
            </div>
        </div>
    </div>

    <!-- footer -->
    <footer>
        <!-- ... footer content ... -->
    </footer>
    
</body>
<script src="./assets/js/script.js"></script>
</html>

<?php
$conn->close();
?>
