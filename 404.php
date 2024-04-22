<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/general.css">
    <link rel="stylesheet" href="./assets/css/404.css">
    <title>Existence Numérique | 404</title>
</head>
<body>

    <header class="d-flex justify-content-evenly align-items-center bg-white fixed-top">
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
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="#">Accueil</a></li>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="#">A propos</a></li>
                <li><a class="fs-3 fw-bold menu__link fw-semibold" href="#">Ressources</a></li>
            </ul>
        </div>
    </header>


    <section class="error d-flex flex-column justify-content-center align-items-center">
        <img src="./assets/images/illustration/404.avif" alt="">
        <h1>Page non trouvée</h1>
        <p>La page que vous tentez d'afficher n'existe pas ou une autre errer s'est produite. Veuillez revenir à la page d'accueil.</p>
        <a href="index.php">
            <button>Revenir à l'accueil</button>
        </a>
    </section>
    
</body>
</html>