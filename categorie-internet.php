<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/general.css">
    <link rel="stylesheet" href="./assets/css/categorie.css">
    <script src="https://kit.fontawesome.com/96e027db6d.js" crossorigin="anonymous"></script>
    <script src="https://cdn.lordicon.com/lordicon.js"></script>
    <title>Existence Numérique | Internet</title>
</head>
<body>
    
    <header id="desktop-header" class="desktop d-flex justify-content-evenly align-items-center bg-white fixed-top exclude-accessibility">
        <div class="logo d-flex justify-content-center align-items-center">
            <a href="index.php">
                <img id="logo_prin" class="img-fluid" src="./assets/images/logo/Logo_principal.png" alt="Logo principal du site existence numérique">
                <img id="logo_BW" class="img-fluid" src="./assets/images/logo/logo.png" alt="Logo principal du site existence numérique">
            </a>
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
        </div>
    </header>

    <!-- langue -->
    
    <div class="language-selector exclude-accessibility">
        <button class="dropbtn exclude-accessibility" id="selected-lang">FR</button>
        <div class="dropdown-content" id="language-menu">
            <a class="exclude-accessibility" href="#" data-lang="fr">FR : Français</a>
            <a class="exclude-accessibility" href="#" data-lang="en">EN : English</a>
            <a class="exclude-accessibility" href="#" data-lang="es">ES : Español</a>
            <a class="exclude-accessibility" href="#" data-lang="de">DE : Deutsch</a>
        </div>
    </div>

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

    <!-- section intro -->
    <section class="intro">
        <div class="arc-cercle">
            <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                <path d="M0,0V7.23C0,65.52,268.63,112.77,600,112.77S1200,65.52,1200,7.23V0Z" class="shape-fill exclude-accessibility BonW"></path>
            </svg>
        </div>
        <div class="intro-container d-flex flex-column align-items-center">
            <h1 class="exclude-accessibility text">Bases d'internet</h1>
            <div class="trait exclude-accessibility"></div>
            <p class="exclude-accessibility text">Apprenez à maîtriser les bases du numérique avec ces tutoriels faciles à suivre. Simplifiez votre vie numérique dès maintenant !</p>
        </div>
    </section>

    <!-- section tutoriels -->
    <section class="tutoriels">
        <?php
        include 'connect_bdd.php';

        $Id_ressource = '';

        $sql = "SELECT * FROM ressource WHERE Categorie = 'Bases d\\'internet' AND Sous_Categorie = 'Gestion en ligne' AND Image != ''";
        $result = $db->query($sql);

        if ($result->rowCount() > 0) {
            echo "<div class='rdv'>";
            echo "<h2>Gestion en ligne</h2>";
            echo "<div class='trait-violet exclude-accessibility'></div>";
            echo "<div class='videos'>";
            while($row = $result->fetch(PDO::FETCH_ASSOC)) {
                echo "<div class='tuto image_wrapper'>";
                // test.php a changer 
                echo "<a href='test.php?Id_ressource=" . $row["Id_ressource"] . "'>";
                echo "<img src='" . $row["Image"] . "' alt='" . $row["Titre"] . "'>";
                echo "<div class='overlay_4'>";
                echo "<div class='text_overlay fw-semibold'>Consulter</div>";
                echo "</div>";
                echo "</a>";
                echo "</div>";
            }
            echo "</div>";
            echo "</div>";
        } else {
            echo "Aucun résultat trouvé.";
        }
        ?>

        <?php 
        $sql_utilisation_systeme = "SELECT * FROM ressource WHERE Categorie = 'Bases d\\'internet' AND Sous_Categorie = 'Utilisation système' AND Image !=' '";
        $result_utilisation_systeme = $db->query($sql_utilisation_systeme);

        if ($result_utilisation_systeme->rowCount() > 0) {
            echo "<div class='rdv'>";
            echo "<h2>Utilisation système</h2>";
            echo "<div class='trait-violet exclude-accessibility'></div>";
            echo "<div class='videos'>";
            while ($row_utilisation_systeme = $result_utilisation_systeme->fetch(PDO::FETCH_ASSOC)) {
                echo "<div class='tuto image_wrapper'>";
                echo "<a href='ressource_type.php?Id_ressource=" . $row_utilisation_systeme["Id_ressource"] . "'>";
                echo "<img src='" . $row_utilisation_systeme["Image"] . "' alt='" . $row_utilisation_systeme["Titre"] . "'>";
                echo "<div class='overlay_4'>";
                echo "<div class='text_overlay fw-semibold'>Consulter</div>";
                echo "</div>";
                echo "</a>";
                echo "</div>";
            }
            echo "</div>";
            echo "</div>";
        } else {
            echo "Aucun résultat trouvé pour la sous-catégorie 'Utilisation système'.";
        }
        ?>
    </section>

    
    <div class="quiz">
        <h2>Quiz</h2>
        <div class="trait-violet exclude-accessibility"></div>
        <div class="texte-img-quiz">
            <div class="texte-quiz">
                <p class="fs-4 fw-medium">Il est grand temps de vous exercer afin de savoir si vous avez bien suivi les ressources de la catégorie <span class="color_int">bases d'internet </span>!</p>
                <button onclick="window.location.href='quiz.html'" class="btn fw-bold btn-quiz">Faire le quiz</button>
            </div>
            <div class="img-quiz">
                <img src="./assets/images/illustration/quiz2.png" alt="">
            </div>
        </div>
    </div>





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
                        <li><a class="fs-4 menu__link fw-medium" href="#">Politique de confidentialité</a></li>
                        <div class="separator"></div>
                        <li><a class="fs-4 menu__link fw-medium" href="#">Mentions légales</a></li>
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
                            <li><a class="fs-3 menu__link fw-medium" href="#">Politique de confidentialité</a></li>
                            <div class="separator"></div>
                            <li><a class="fs-3 menu__link fw-medium" href="#">Mentions légales</a></li>
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
    
        <script src="./assets/js/bootstrap.bundle.min.js"></script>
    
        <script src="./assets/js/script.js"></script>
        
    </body>
    </html>
