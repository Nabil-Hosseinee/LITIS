<?php
session_start();

// dans le cas où c'est un synonyme et où l'on récupère le(s) mot(s) + def + syn
if (isset($_SESSION['motsAssocies'])) {
    $motsAssocies = $_SESSION['motsAssocies'];
    $mot = $_SESSION['mot'];
    $definition = $_SESSION['definition'];
    $synonymes = $_SESSION['synonyme'];

    if (isset($_SESSION['ressource'])) {
        $ressource = $_SESSION['ressource'];
    }
}

// dans le cas ou c'est un mot et où l'on récupère def + syn
else {
    if (isset($_SESSION['mot'])) {
        $text = "On a un mot";
        $mot = $_SESSION['mot'];
        $definition = $_SESSION['def'];
        $synonymes = $_SESSION['synonyme'];

        if (isset($_SESSION['ressource'])) {
            $ressource = $_SESSION['ressource'];
        }
    }
    // logiquement, dans le cas où ce n'est ni un synonyme, ni un mot
    else {
        header("Location: 404.php");
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/general.css">
    <link rel="stylesheet" href="./assets/css/searchv2.css">
    <script src="https://cdn.lordicon.com/lordicon.js"></script>
    <script src="https://kit.fontawesome.com/96e027db6d.js" crossorigin="anonymous"></script>
    <!-- langue -->
    <script src="https://unpkg.com/i18next@21.6.13/i18next.min.js"></script>
    <script src="https://unpkg.com/i18next-http-backend@1.4.0/i18nextHttpBackend.min.js"></script>
    <script src="https://unpkg.com/i18next-browser-languagedetector@6.1.3/i18nextBrowserLanguageDetector.min.js"></script>
    <!--  -->
    <title>Existence Numérique | A propos</title>
</head>
<body>
    
    <header class="desktop d-flex justify-content-evenly align-items-center bg-white fixed-top">
        <div class="logo d-flex justify-content-center align-items-center">
            <img class="img-fluid" src="./assets/images/logo/Logo_principal.png" alt="Logo principal du site existence numérique">
        </div>
        <nav class="navbar navbar-expand-lg">
            <ul class="d-flex justify-content-center align-items-center">
                <li><a class="fs-4 menu__link fw-semibold" href="index.php">Accueil</a></li>
                <li><a class="fs-4 menu__link fw-semibold" href="about.html">A propos</a></li>
                <li><a class="fs-4 menu__link fw-semibold" href="ressource.html">Ressources</a></li>
            </ul>
        </nav>

        <div>
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
        </div>

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
                <img src="./assets/images/logo/Logo_principal.png" alt="Logo du site existence numérique">
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

        <div class="search">
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
            </div>
    </header>


    <div class="language-selector exclude-accessibility">
        <button class="dropbtn exclude-accessibility" id="selected-lang">FR</button>
        <div class="dropdown-content" id="language-menu">
            <a href="#" data-lang="fr">FR : Français</a>
            <a href="#" data-lang="en">EN : English</a>
            <a href="#" data-lang="es">ES : Español</a>
            <a href="#" data-lang="de">DE : Deutsch</a>
        </div>
    </div>

    <div id="access" class="access d-flex justify-content-center align-items-center exclude-accessibility">
        <i class="fa-solid fa-eye-low-vision exclude-accessibility"></i>
        <div id="access-menu" class="access-menu">
            <label class="switch mg">
                <span class="fw-bold color_v exclude-accessibility" data-i18n="access_lang">Changer l'écriture</span>
                <input type="checkbox" class="font-toggle exclude-accessibility">
                <span class="slider round exclude-accessibility"></span>
            </label>
            <label class="switch">
                <span class="fw-bold color_v exclude-accessibility" data-i18n="access_contrast">Changer le contraste</span>
                <input type="checkbox" class="bg-toggle exclude-accessibility">
                <span class="slider round exclude-accessibility"></span>
            </label>
        </div>
    </div>

    <div id="chatbot" class="chatbot d-flex justify-content-center align-items-center">
        <img id='avatar' src="./assets/images/avatar/normal.svg" alt="">
        <i id="croix" class="fa-solid fa-xmark" style="display:none"></i>
    </div>


    <!-- tutoriel -->
    <section class="container tutoriels d-flex flex-column align-items-center">
        <div class="titre">
            <h1><?php echo $_SESSION['mot']; ?></h1>
        </div>
        <div class="definition d-flex flex-column">
            <?php echo "<p class='fs-5'>$definition</p>" ?>
            <br>
            <?php echo "<p class='fs-5'><span class='syn'>Synonymes :</span> $synonymes</p>" ?>
        </div>

        <div class="bar"></div>

        <h2>Ressources</h2>

        <div class="container rdv">
            <div class="videos d-flex">
                <?php
                    foreach ($ressource as $item) {
                        if (!empty($item['Image'])) {
                            $minia = $item['Image'];
                            $id = $item['Id_ressource'];
    
                            echo "
                                <div class='tuto image_wrapper'>
                                    <a href='ressource_type.php?Id_ressource=$id'>
                                        <img src='$minia' alt=''>
                                        <div class='overlay_4'>
                                            <div class='text_overlay fw-semibold'>Consulter</div>
                                        </div>
                                    </a>
                                </div>
                                ";
                        }
                    }
                ?>
            </div>
        </div>
    </section>


    <!-- footer -->
    <footer>
        <div class="container d-flex flex-column align-items-center">
            <div class="link-container">
                <ul class="d-flex">
                    <li><a class="fs-4 menu__link fw-medium" href="index.php">Accueil</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="about.html">A propos</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="ressource.html">Ressources</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="politique.html">Politique de confidentialité</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="legal.html">Mentions légales</a></li>
                </ul>
            </div>

            <div class="link-container_992 d-flex flex-column align-items-center none">
                <div class="top">
                    <ul class="d-flex">
                        <li><a class="fs-3 menu__link fw-medium" href="index.php">Accueil</a></li>
                        <div class="separator"></div>
                        <li><a class="fs-3 menu__link fw-medium" href="about.html">A propos</a></li>
                        <div class="separator"></div>
                        <li><a class="fs-3 menu__link fw-medium" href="ressource.html">Ressources</a></li>
                    </ul>
                </div>
                <div class="bot">
                    <ul class="d-flex">
                        <li><a class="fs-3 menu__link fw-medium" href="politique.html">Politique de confidentialité</a></li>
                        <div class="separator"></div>
                        <li><a class="fs-3 menu__link fw-medium" href="legal.html">Mentions légales</a></li>
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
</html>