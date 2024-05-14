<?php 
session_start();

include('connect_bdd.php');

$query = "SELECT * FROM glossaire";
$statement = $db->prepare($query);
$statement->execute();
$results = $statement->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/general.css">
    <link rel="stylesheet" href="./assets/css/glossaire.css">
    <script src="https://cdn.lordicon.com/lordicon.js"></script>
    <script src="https://kit.fontawesome.com/96e027db6d.js" crossorigin="anonymous"></script>
    <title>Existence Numérique | Glossaire</title>
  </head>

  <body id="body">
    <header class="desktop d-flex justify-content-evenly align-items-center bg-white fixed-top">
        <div class="logo d-flex justify-content-center align-items-center">
            <img class="img-fluid" src="./assets/images/logo/Logo_principal.png" alt="Logo principal du site existence numérique">
        </div>
        <nav class="navbar navbar-expand-lg">
            <ul class="d-flex justify-content-center align-items-center">
                <li><a class="active fs-3 menu__link fw-semibold" href="index.php">Accueil</a></li>
                <li><a class="fs-3 menu__link fw-semibold" href="about.html">A propos</a></li>
                <li><a class="fs-3 menu__link fw-semibold" href="ressource.html">Ressources</a></li>
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

    <section class="container title d-flex flex-column align-items-center">
        <h1>Glossaire</h1>
        <p class="fs-4">Ici, vous pouvez accéder, apprendre et découvrir tous les termes en lien avec le web.</p>
        <div class="big_search">
            <input type="text" id="big-search-input" placeholder="Rechercher...">
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
        <div id="search-error" style="color: red; display: none;"></div>
    </section>


    <section class="container glossaire d-flex flex-column align-items-center">
        <ul class="filtre d-flex justify-content-center align-items-center">
            <li class="list filtre-active" data-filter="All">Tout</li>
            <li class="list" data-filter="A">A</li>
            <li class="list" data-filter="B">B</li>
            <li class="list" data-filter="C">C</li>
            <li class="list" data-filter="D">D</li>
            <li class="list" data-filter="E">E</li>
            <li class="list" data-filter="F">F</li>
            <li class="list" data-filter="G">G</li>
            <li class="list" data-filter="H">H</li>
            <li class="list" data-filter="I">I</li>
            <li class="list" data-filter="J">J</li>
            <li class="list" data-filter="K">K</li>
            <li class="list" data-filter="L">L</li>
            <li class="list" data-filter="M">M</li>
            <li class="list" data-filter="N">N</li>
            <li class="list" data-filter="O">O</li>
            <li class="list" data-filter="P">P</li>
            <li class="list" data-filter="Q">Q</li>
            <li class="list" data-filter="R">R</li>
            <li class="list" data-filter="S">S</li>
            <li class="list" data-filter="T">T</li>
            <li class="list" data-filter="U">U</li>
            <li class="list" data-filter="V">V</li>
            <li class="list" data-filter="W">W</li>
            <li class="list" data-filter="X">X</li>
            <li class="list" data-filter="Y">Y</li>
            <li class="list" data-filter="Z">Z</li>
        </ul>

        <div class="container glossaire-container d-flex justify-content-center align-items-center">
            <?php
                foreach ($results as $row) {
                $mot = htmlspecialchars($row['Mot']);
                $def = htmlspecialchars($row['Definition']);
                $syn = htmlspecialchars($row['Synonyme']);
                $firstLetter = strtoupper($mot[0]); 

                echo "
                    <div class= \"mot-box $firstLetter\" id=\"".strtolower($mot)."\">
                        <p class= \"mot\">$mot</p>
                        <p class= \"def\">$def</p>
                    </div>";
            }
            ?>
        </div>
    </section>

    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

    <script>
        $(document).on('click', '.filtre li', function() {
            $(this).addClass('filtre-active').siblings().removeClass('filtre-active');
        })

        $(document).ready(function() {
            $('.list').click(function() {
                const value = $(this).attr('data-filter');
                if (value == 'All') {
                    $('.mot-box').show('1000');
                }
                else {
                    $('.mot-box').not('.' + value).hide('1000');
                    $('.mot-box').filter('.' + value).show('1000');
                }
            })
        })




        $(document).ready(function() {
            $('#big-search-input').on('keypress', function(e) {
                // Vérifie si la touche Entrée est pressée
                if (e.which === 13) {
                    e.preventDefault();  // Empêche le formulaire de s'envoyer
                    var searchWord = $(this).val().toLowerCase();

                    // Réinitialiser la mise en évidence et cacher les messages d'erreur précédents
                    $('.mot-box').removeClass('highlight');
                    $('#search-error').hide();

                    if (searchWord) {
                        var target = $('#' + searchWord);
                        if (target.length) {
                            // Défiler vers le mot spécifique si trouvé
                            $('html, body').animate({
                                scrollTop: target.offset().top - 350 // ajustez '-100' pour compenser la hauteur du header si nécessaire
                            }, 1000, function() {
                                // Ajouter la classe de mise en évidence une fois le défilement terminé
                                target.addClass('highlight');
                            });
                        } else {
                            // Afficher un message d'erreur si le mot n'est pas trouvé
                            $('#search-error').text("Aucun résultat trouvé pour '" + searchWord + "'.").show();
                        }
                    }
                }
            });
        });
    </script>




    
    <!-- footer -->
    <footer>
        <div class="d-flex flex-column align-items-center">
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
                        <li><a class="fs-4 menu__link fw-medium" href="#">Accueil</a></li>
                        <div class="separator"></div>
                        <li><a class="fs-4 menu__link fw-medium" href="#">A propos</a></li>
                        <div class="separator"></div>
                        <li><a class="fs-4 menu__link fw-medium" href="#">Ressources</a></li>
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

    <script src="./assets/js/bootstrap.bundle.min.js"></script>

    <script src="./assets/js/script.js"></script>
  </body>

</html>