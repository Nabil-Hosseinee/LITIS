<?php
session_start();

// dans le cas où c'est un synonyme et où l'on récupère le(s) mot(s) + def + syn
if (isset($_SESSION['motsAssocies'])) {
    $motsAssocies = $_SESSION['motsAssocies'];
    $mot = $_SESSION['mot'];
    echo $mot;
    $text = "On a un synonyme";


    // echo "<pre>";
    // var_dump($motsAssocies);
    // echo "</pre>";

    // echo "<ul>";
        foreach ($motsAssocies as $mot => $data) {
            $definition = $data['definition'];
            $synonyme = $data['synonymes'];
            $synonymesArray = explode(',', $synonyme); // Convertir la chaîne de synonymes en tableau

            // Construire la chaîne des synonymes entre parenthèses
            $synonymes = implode(', ', $synonymesArray);

            echo "<li><strong>$mot $synonymes :</strong> $definition</li>";
        }
    // echo "</ul>";

}
// dans le cas ou c'est un mot et où l'on récupère def + syn
else {
    if (isset($_SESSION['mot'])) {
        $text = "On a un mot";
        $mot = $_SESSION['mot'];
        $definition = $_SESSION['def'];
        $synonymes = $_SESSION['synonyme'];

        echo "<h2>$mot ($synonymes)</h2>";
        echo "<p>$definition</p>";
        echo $mot;
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
    <link rel="stylesheet" href="./assets/css/search.css">
    <script src="https://cdn.lordicon.com/lordicon.js"></script>
    <title>LITIS | Accueil</title>
  </head>

  <body>
    <!-- <header class="d-flex justify-content-evenly align-items-center bg-white fixed-top">
        <div class="logo d-flex justify-content-center align-items-center">
            <img class="img-fluid" src="./assets/images/logo/Logo_principal.png" alt="">
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
                <input name="mot" type="text" placeholder="Rechercher..." autocomplete="off">
                <a href="#">
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
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="index.html">Accueil</a></li>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="about.html">A propos</a></li>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="#">Ressources</a></li>
            </ul>
        </div>
    </header> -->

    <section class="affichage d-flex flex-column">
        <!-- php pour le h1 -->
        <h1>Les résultats pour : Balise</h1>
        <p><?php echo $text; ?></p>
        <div class="container d-flex align-items-center">
            <!-- php pour les boites glossaire et ressource -->
            <div class="glossaire d-flex flex-column align-items-center">
                <h2>Glossaire</h2>
                <div class="def">
                    <h3 class="fs-2"><?php echo "$mot ($synonymes) :"; ?></h3>
                    <p class="fs-5">
                        <?php echo $definition; ?>
                    </p>
                </div>
                
            </div>

            <div class="separator bg-black"></div>

            <div class="ressource d-flex flex-column align-items-center">
                <h2 class="res-title">Ressource(s)</h2>
                <div class="ressource-prop">
                    <div class="box d-flex flex-column align-items-center bg-white rounded-4 center-box">
                        <h4 class="fs-5">Utiliser Parcoursup</h4>
                        <h3 class="fs-6">Éducation</h3>
                        <div class="img rounded-4">
                            <img class="img-fluid rounded" src="./assets/images/miniatures/minia_parcoursup.png" alt="">
                        </div>
                        <button>Consulter la ressource</button>
                    </div>
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
                    <div class="footer-separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="#">A propos</a></li>
                    <div class="footer-separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="#">Ressources</a></li>
                    <div class="footer-separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="#">Politique de confidentialité</a></li>
                    <div class="footer-separator"></div>
                    <li><a class="fs-4 menu__link fw-medium" href="#">Mentions légales</a></li>
                </ul>
            </div>

            <div class="link-container_992 d-flex flex-column align-items-center none">
                <div class="top">
                    <ul class="d-flex">
                        <li><a class="fs-3 menu__link fw-medium" href="#">Accueil</a></li>
                        <div class="footer-separator"></div>
                        <li><a class="fs-3 menu__link fw-medium" href="#">A propos</a></li>
                        <div class="footer-separator"></div>
                        <li><a class="fs-3 menu__link fw-medium" href="#">Ressources</a></li>
                    </ul>
                </div>
                <div class="bot">
                    <ul class="d-flex">
                        <li><a class="fs-3 menu__link fw-medium" href="#">Politique de confidentialité</a></li>
                        <div class="footer-separator"></div>
                        <li><a class="fs-3 menu__link fw-medium" href="#">Mentions légales</a></li>
                    </ul>
                </div>
            </div>

            <div class="logo-container">
                <img class="img-fluid" src="./assets/images/logo/litis_logo.webp" alt="">
                <img class="img-fluid" src="./assets/images/logo/agefiph logo.svg" alt="">
                <img class="img-fluid" src="./assets/images/logo/logo_iut.png" alt="">
                <img class="img-fluid" src="./assets/images/logo/iut_rouen_logo_nobg.png" alt="">
            </div>
        </div>
    </footer>
  </body>