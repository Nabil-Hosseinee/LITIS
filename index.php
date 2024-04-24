<?php
session_start();


?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/general.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <script src="https://cdn.lordicon.com/lordicon.js"></script>
    <title>LITIS | Accueil</title>
  </head>

  <body>
    <header class="desktop d-flex justify-content-evenly align-items-center bg-white fixed-top">
        <div class="logo d-flex justify-content-center align-items-center">
            <img class="img-fluid" src="./assets/images/logo/Logo_principal.png" alt="Logo principal du site existence numérique">
        </div>
        <nav class="navbar navbar-expand-lg">
            <ul class="d-flex justify-content-center align-items-center">
                <li><a class="active fs-4 menu__link fw-semibold" href="#">Accueil</a></li>
                <li><a class="fs-4 menu__link fw-semibold" href="#">A propos</a></li>
                <li><a class="fs-4 menu__link fw-semibold" href="#">Ressources</a></li>
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
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="#">Accueil</a></li>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="#">A propos</a></li>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="#">Ressources</a></li>
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
                    <li><a class="fs-3 fw-bold menu__link fw-semibold" href="#">Accueil</a></li>
                    <li><a class="fs-3 fw-bold menu__link fw-semibold" href="#">A propos</a></li>
                    <li><a class="fs-3 fw-bold menu__link fw-semibold" href="#">Ressources</a></li>
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


    <!-- presentation -->
    <section class="presentation">
        <div class="pre-container d-flex align-items-center">
            <div class="images col-xl-6 col-lg-12">
                <img class="img-fluid" src="./assets/images/illustration/galere.svg" alt="">
            </div>

            <div class="content col-xl-6 col-lg-12">
                <!-- class bootstrap qui ne fonctionne pas "fs-sm-4" -->
                <p class="fs-3 fs-sm-4">
                    Découvrez une multitude de <span class="fw-semibold color_v">ressources</span> soigneusement élaborées pour vous accompagner dans le développement de vos <span class="color_v fw-semibold">compétences numériques.</span> <br><br>Elles vous permettront ainsi de naviguer avec aisance et assurance à travers le paysage technologique en constante évolution, tout en vous donnant les outils nécessaires pour relever les <span class="color_v fw-semibold">défis numériques</span> avec confiance et succès.
                </p>
                <div class="btn-container d-flex justify-content-start">
                    <button class="btn fw-bold btn-resource">Accéder aux ressources</button>
                    <button class="btn fw-bold btn-about">A propos</button>
                </div>
            </div>
            
        </div>
    </section>


    <!-- slogan -->
    <div class="slogan d-flex justify-content-center align-items-center">
        <img class="slogan_img slogan_droite" src="./assets/images/illustration/slogan.svg" alt="">
        <!-- <img class="slogan_img slogan_gauche" src="./assets/images/illustration/slogan_gauche.svg" alt=""> -->
        <div class="circle d-flex justify-content-center align-items-center">
            <img src="./assets/images/illustration/quotes.svg" alt="">
        </div>
        <div class="container rounded-4 d-flex justify-content-center align-items-center">
            <h1 class="color_v">
                La référence digitale pour naviguer vers l'inclusion en ligne
            </h1>
        </div>
    </div>

    
    <!-- prb -->
    <section class="prb">
        <h2 class="fs-1 fw-bold">
            Quelle est notre <span class="color_v">mission</span> ?
        </h2>
        <div class="container prb-container d-flex flex-column align-items-center">
            <img class="col-xl-12 img-fluid" src="./assets/images/illustration/mission.png" alt="Illustration des missions, une personne vise une cible avec une fléchette">
            <p class="col-xl-12 fs-3 fw-medium">
                Nous nous engageons à rendre le monde numérique accessible à tous.
                <br>
                <br>
                Découvrez une multitude de ressources et de vidéos tutoriels pour renforcer vos compétences numériques. De la théorie à la pratique, notre plateforme offre des guides détaillés et des mises en situation concrètes.
                <br>
                <br>
                <span class="color_v fw-bold">Notre mission</span> : accompagner chacun vers une maîtrise confiante du digital, pour un avenir prospère et inclusif.
            </p>
        </div>
    </section>


    <!-- tuto -->
    <section class="tuto">
        <h2 class="fs-1 fw-bold">
            Les <span class="color_v">tutoriels</span> à la une
        </h2>

        <div class="container">
            <div class="big-box col-xl-12 d-flex justify-content-between align-items-center rounded-4 desapear-576">
                <div class="big-box-img col-xl-5 rounded-4">
                    <img class="img-fluid rounded" src="./assets/images/miniatures/minia_doctolib.png" alt="Miniature de la vidéo nommée 'Prendre un rendez-vous sur Doctolib'">
                </div>
                <div class="big-box-content col-6">
                    <h3>Prendre un rendez-vous sur Doctolib</h3>
                    <h4>Santé</h4>
                    <p class="fs-5">
                        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatum, possimus tenetur consequuntur nam fugit repellat...
                        <a href="#" class="text-primary text-decoration-underline">Lire la suite</a>
                    </p>
                </div>
            </div>

            <div class="container box-container d-flex justify-content-between">
                <div class="box d-flex flex-column align-items-center rounded-4">
                    <h4 class="fs-5">Créer un mot de passe sécurisé</h4>
                    <h3 class="fs-6">Base d'Internet</h3>
                    <div class="img rounded-4">
                        <img class="img-fluid rounded" src="./assets/images/miniatures/minia_crea_mdp.png" alt="Miniature de la vidéo nommée 'Créer un mot de passe sécurisé'">
                    </div>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, recusandae.
                        <a href="#" class="text-primary text-decoration-underline">Lire la suite</a>
                    </p>
                </div>

                <div class="box d-flex flex-column align-items-center rounded-4 center-box">
                    <h4 class="fs-5">Utiliser Parcoursup</h4>
                    <h3 class="fs-6">Éducation</h3>
                    <div class="img rounded-4">
                        <img class="img-fluid rounded" src="./assets/images/miniatures/minia_parcoursup.png" alt="Miniature de la vidéo nommée 'Utiliser Parcoursup'">
                    </div>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, recusandae.
                        <a href="#" class="text-primary text-decoration-underline">Lire la suite</a>
                    </p>
                </div>

                <div class="box d-flex flex-column align-items-center rounded-4 desapear">
                    <h4 class="fs-5">Créer un compte Google</h4>
                    <h3 class="fs-6">Base d'Internet</h3>
                    <div class="img rounded-4">
                        <img class="img-fluid rounded" src="./assets/images/miniatures/minia_crea_google.png" alt="Miniature de la vidéo nommée 'Créer un compte Google'">
                    </div>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, recusandae.
                        <a href="#" class="text-primary text-decoration-underline">Lire la suite</a>
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- footer -->
    <footer>
        <div class="container d-flex flex-column align-items-center">
            <div class="link-container">
                <ul class="d-flex">
                    <li><a class="fs-4 menu__link fw-medium" href="#">Accueil</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="#">A propos</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="#">Ressources</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="#">Politique de confidentialité</a></li>
                    <div class="separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="#">Mentions légales</a></li>
                </ul>
            </div>

            <div class="link-container_992 d-flex flex-column align-items-center none">
                <div class="top">
                    <ul class="d-flex">
                        <li><a class="fs-3 menu__link fw-medium" href="#">Accueil</a></li>
                        <div class="separator"></div>
                        <li><a class="fs-3 menu__link fw-medium" href="#">A propos</a></li>
                        <div class="separator"></div>
                        <li><a class="fs-3 menu__link fw-medium" href="#">Ressources</a></li>
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