<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/general.css">
    <link rel="stylesheet" href="./assets/css/404.css">
    <script src="https://kit.fontawesome.com/96e027db6d.js" crossorigin="anonymous"></script>
    <title>Existence Numérique | 404</title>
</head>
<body>

<header id="desktop-header" class="desktop d-flex justify-content-evenly align-items-center bg-white fixed-top exclude-accessibility">
        <div class="logo d-flex justify-content-center align-items-center">
            <a href="index.php"><img class="img-fluid" src="./assets/images/logo/Logo_principal.png" alt="Logo principal du site existence numérique"></a>
        </div>
        <nav class="navbar navbar-expand-lg">
            <ul class="d-flex justify-content-center align-items-center">
                <li><a class="fs-3 menu__link fw-semibold" href="index.php" data-i18n="home">Accueil</a></li>
                <li><a class="fs-3 menu__link fw-semibold" href="about.html" data-i18n="about">A propos</a></li>
                <li><a class="active fs-3 menu__link fw-semibold" href="ressource.html" data-i18n="resources">Ressources</a></li>
            </ul>
        </nav>

        <form class="search exclude-accessibility" action="cible2.php" method="post">
            <label for="search-input" class="visually-hidden">Rechercher</label>
            <input id="search-input" class="exclude-accessibility" name="mot" type="text" placeholder="Rechercher..." autocomplete="off" data-i18n="search_placeholder">
            <a href="#" aria-label="Rechercher" class="exclude-accessibility">
                <lord-icon class="icon"
                    src="https://cdn.lordicon.com/unukghxb.json"
                    trigger="loop"
                    delay="2000"
                    style="width:30px;height:30px">
                </lord-icon>
            </a>
        </form>

        <div class="language-selector exclude-accessibility">
            <button class="dropbtn exclude-accessibility" id="selected-lang">FR</button>
            <div class="dropdown-content" id="language-menu">
                <a href="#" data-lang="fr">FR : Français</a>
                <a href="#" data-lang="en">EN : English</a>
                <a href="#" data-lang="es">ES : Español</a>
                <a href="#" data-lang="de">DE : Deutsch</a>
            </div>
        </div>

        <div class="burger-active exclude-accessibility" id="burger-menu">
            <button class="exclude-accessibility">
                <p class="exclude-accessibility">Menu</p>
                <span class="exclude-accessibility"></span>
            </button>
        </div>

        <div id="menu" class="exclude-accessibility">
            <ul>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="index.php" data-i18n="home">Accueil</a></li>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="about.html" data-i18n="about">A propos</a></li>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="ressource.html" data-i18n="resources">Ressources</a></li>
            </ul>
        </div>
    </header>

    <!-- phone header -->
    <header id="phone-header" class="phone d-flex flex-column align-items-center bg-white fixed-top exclude-accessibility">
        <div class="header-container d-flex justify-content-around align-items-center">
            <div class="logo">
                <a href="index.php"><img class="img-fluid" src="./assets/images/logo/Logo_principal.png" alt="Logo principal du site existence numérique"></a>
            </div>
            
            <div class="burger-active exclude-accessibility" id="burger-menu-phone">
                <button class="exclude-accessibility">
                    <p class="exclude-accessibility">Menu</p>
                    <span class="exclude-accessibility"></span>
                </button>
            </div>
    
            <div id="menu-phone" class="exclude-accessibility">
                <ul>
                    <li><a class="fs-3 fw-bold menu__link fw-semibold" href="index.php" data-i18n="home">Accueil</a></li>
                    <li><a class="fs-3 fw-bold menu__link fw-semibold" href="about.html" data-i18n="about">A propos</a></li>
                    <li><a class="fs-3 fw-bold menu__link fw-semibold" href="ressource.html" data-i18n="resources">Ressources</a></li>
                </ul>
            </div>
        </div>

        <div class="phone_bot d-flex justify-content-between exclude-accessibility">
            <form class="search exclude-accessibility" action="cible2.php" method="post">
                <label for="search-input" class="visually-hidden">Rechercher</label>
                <input type="text" id="search-input" placeholder="Rechercher...">
                <a href="#" aria-labelledby="search-input">
                    <lord-icon class="icon phone_icon"
                        src="https://cdn.lordicon.com/unukghxb.json"
                        trigger="loop"
                        delay="2000"
                        style="width:30px;height:30px">
                    </lord-icon>
                    <span class="visually-hidden">Rechercher</span>
                </a>
            </form>

            <div class="language-selector exclude-accessibility phone_select">
                <button class="dropbtn exclude-accessibility" id="selected-lang">FR</button>
                <div class="dropdown-content" id="language-menu">
                    <a href="#" data-lang="fr">FR : Français</a>
                    <a href="#" data-lang="en">EN : English</a>
                    <a href="#" data-lang="es">ES : Español</a>
                    <a href="#" data-lang="de">DE : Deutsch</a>
                </div>
            </div>
        </div>
    </header>


    <!-- accessibilité -->
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

    <!-- chatbot -->
    <div id="chatbot" class="chatbot d-flex justify-content-center align-items-center">
        <img src="./assets/images/avatar/normal.svg" alt="">
    </div>


    <section class="error d-flex flex-column justify-content-center align-items-center">
        <img class="img-fluid" src="./assets/images/illustration/Error404.png" alt="">
        <h1>Page non trouvée</h1>
        <p>La page que vous tentez d'afficher n'existe pas ou une autre errer s'est produite. Veuillez revenir à la page d'accueil.</p>
        <a href="index.php">
            <button>Revenir à l'accueil</button>
        </a>
    </section>
    
</body>
</html>