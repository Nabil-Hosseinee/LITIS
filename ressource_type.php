<?php
try {
    include 'connect_bdd.php';

    $id_ressource = isset($_GET['Id_ressource']) ? $_GET['Id_ressource'] : null;
    $sql = "SELECT ressource.*, ressource_type.*, etape.* 
            FROM ressource 
            JOIN ressource_type ON ressource.Id_ressource = ressource_type.ressource_id 
            JOIN etape ON ressource_type.id_ressource_type = etape.ressource_type_id 
            WHERE ressource.Id_ressource = :id_ressource 
            ORDER BY etape.numero_etape ASC";
    $query = $db->prepare($sql);
    $query->execute(['id_ressource' => $id_ressource]);

    if ($query->rowCount() > 0) {
        $ressources = $query->fetchAll(PDO::FETCH_ASSOC);
    } else {
        $ressources = [];
    }
} catch (PDOException $e) {
    echo "Erreur SQL : " . $e->getMessage();
}
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
    <title>Existence Numérique | <?php echo htmlspecialchars($ressources[0]["Titre"]); ?></title>
</head>
<body>

    <header class="desktop d-flex justify-content-evenly align-items-center bg-white fixed-top">
        <div class="logo d-flex justify-content-center align-items-center">
            <a href="index.php"><img class="img-fluid" src="./assets/images/logo/Logo_principal.png" alt="Logo principal du site existence numérique"></a>
        </div>
        <nav class="navbar navbar-expand-lg">
            <ul class="d-flex justify-content-center align-items-center">
                <li><a class="fs-3 menu__link fw-semibold" href="index.php">Accueil</a></li>
                <li><a class="fs-3 menu__link fw-semibold" href="about.html">A propos</a></li>
                <li><a class="fs-3 menu__link fw-semibold" href="ressource.html">Ressources</a></li>
            </ul>
        </nav>

        <form class="search" action="cible2.php" method="post">
            <label for="search-input" class="visually-hidden">Rechercher</label>
            <input id="search-input" name="mot" type="text" placeholder="Rechercher..." autocomplete="off">
            <a href="#" aria-label="Rechercher">
                <lord-icon class="icon"
                    src="https://cdn.lordicon.com/unukghxb.json"
                    trigger="loop"
                    delay="2000"
                    style="width:30px;height:30px">
                </lord-icon>
            </a>
        </form>

        <div class="burger-active" id="burger-menu">
            <button>
                <p>Menu</p>
                <span></span>
            </button>
        </div>

        <div id="menu">
            <ul>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="index.php">Accueil</a></li>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="about.html">A propos</a></li>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="ressource.html">Ressources</a></li>
            </ul>
        </div>
    </header>

    <!-- phone header -->
    <header class="phone d-flex flex-column align-items-center bg-white fixed-top">
        <div class="header-container d-flex justify-content-around align-items-center">
            <div class="logo">
                <a href="index.php"><img class="img-fluid" src="./assets/images/logo/Logo_principal.png" alt="Logo principal du site existence numérique"></a>
            </div>
            
            <div class="burger-active" id="burger-menu-phone">
                <button>
                    <p>Menu</p>
                    <span></span>
                </button>
            </div>
    
            <div id="menu-phone">
                <ul>
                    <li><a class="fs-3 fw-bold menu__link fw-semibold" href="index.php">Accueil</a></li>
                    <li><a class="fs-3 fw-bold menu__link fw-semibold" href="about.html">A propos</a></li>
                    <li><a class="fs-3 fw-bold menu__link fw-semibold" href="ressource.html">Ressources</a></li>
                </ul>
            </div>
        </div>

        <form class="search" action="cible2.php" method="post">
            <label for="search-input" class="visually-hidden">Rechercher</label>
            <input type="text" id="search-input" placeholder="Rechercher...">
            <a href="#" aria-labelledby="search-input">
                <lord-icon class="icon"
                    src="https://cdn.lordicon.com/unukghxb.json"
                    trigger="loop"
                    delay="2000"
                    style="width:30px;height:30px">
                </lord-icon>
                <span class="visually-hidden">Rechercher</span>
            </a>
        </form>
    </header>


    <!-- Titre -->

    <div class="title">
        <h1><?php echo htmlspecialchars($ressources[0]["titre_video"]); ?></h1>
         <div class="underline title_underline"></div>
    </div>


    <!-- Vidéo -->
    
    <div class="tuto image_wrapper">
        <video controls>
            <source src="<?php echo htmlspecialchars($ressources[0]["video"]); ?>" type="video/mp4">
            Votre navigateur ne supporte pas la vidéo.
        </video>
    </div> 

     <!-- separator -->

    <div class="bar"></div>


     <!-- Étapes-->

     <div class="etape">

        <?php foreach ($ressources as $ressource): ?>
            <h2><?php echo htmlspecialchars($ressource["titre_etape"]); ?> :</h2> 
            <p><?php echo htmlspecialchars($ressource["description_etape"]); ?></p><br/><br/>
        <?php endforeach; ?>
        
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
        <div class="d-flex flex-column align-items-center">
            <div class="link-container">
                <ul class="d-flex">
                    <li><a class="fs-4 menu__link fw-medium" href="index.php">Accueil</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="about.html">A propos</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="ressource.html">Ressources</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="#">Politique de confidentialité</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="#">Mentions légales</a></li>
                </ul>
            </div>

            <div class="link-container_992 d-flex flex-column align-items-center none">
                <div class="top">
                    <ul class="d-flex">
                        <li><a class="fs-4 menu__link fw-medium" href="index.php">Accueil</a></li>
                        <div class="separator"></div>
                        <li><a class="fs-4 menu__link fw-medium" href="about.html">A propos</a></li>
                        <div class="separator"></div>
                        <li><a class="fs-4 menu__link fw-medium" href="ressource.html">Ressources</a></li>
                    </ul>
                </div>
                <div class="bot">
                    <ul class="d-flex">
                        <li><a class="fs-4 menu__link fw-medium" href="#">Politique de confidentialité</a></li>
                        <div class="separator"></div>
                        <li><a class="fs-4 menu__link fw-medium" href="#">Mentions légales</a></li>
                    </ul>
                </div>
            </div>

            <div class="logo-container">
                <img class="img-fluid" src="./assets/images/logo/litis_logo.webp" alt="Logo du laboratoire LITIS">
                <img class="img-fluid" src="./assets/images/logo/agefiph logo.svg" alt="Logo de l'AGEFIPH">
                <img class="img-fluid" src="./assets/images/logo/logo_iut.png" alt="Logo de l'Université de Rouen">
                <img class="img-fluid" src="./assets/images/logo/iut_rouen_logo_nobg.png" alt="Logo de l'IUT de Rouen">
            </div>
        </div>
    </footer>
    
</body>

<script src="./assets/js/script.js"></script>
</html>