document.addEventListener('DOMContentLoaded', function () {
    // Fonction pour vérifier si un élément est visible dans la fenêtre
    function isElementInViewport(el) {
        const rect = el.getBoundingClientRect();
        return (
            rect.top <= (window.innerHeight || document.documentElement.clientHeight) &&
            rect.bottom >= 0
        );
    }

    // Ajout d'une animation pour chaque section
    const fadeElements = document.querySelectorAll('.fade-in');

    function handleScroll() {
        fadeElements.forEach(function (element) {
            if (isElementInViewport(element)) {
                element.classList.add('visible');
            }
        });
    }

    // Initialiser les animations lors du chargement initial
    window.addEventListener('scroll', handleScroll);
    handleScroll(); // Vérifier au chargement initial
    

    // Animation pour les boutons
    const btns = document.querySelectorAll('.btn');
    btns.forEach(function (btn) {
        btn.addEventListener('mouseover', function () {
            btn.animate([
                { transform: 'scale(1)' },
                { transform: 'scale(1.05)' },
                { transform: 'scale(1)' }
            ], {
                duration: 500,
                iterations: 1
            });
        });
    });

    // Animation pour le menu hamburger
    const burgerBtns = document.querySelectorAll('.burger-active');
    burgerBtns.forEach(function (burger) {
        burger.addEventListener('click', function () {
            burger.querySelector('span').classList.toggle('active');
            document.getElementById(burger.dataset.target).classList.toggle('show');
        });
    });

    window.addEventListener('scroll', handleScroll);
    handleScroll(); // Vérifier au chargement initial
});



// 

// 
// 
// 
// 



var burgerMenu = document.getElementById('burger-menu');
var overlay = document.getElementById('menu');
var burgerMenuPhone = document.getElementById('burger-menu-phone');
var overlayPhone = document.getElementById('menu-phone');

burgerMenu.addEventListener('click', function() {
    this.classList.toggle("close");
    overlay.classList.toggle("overlay");
});

burgerMenuPhone.addEventListener('click', function() {
    this.classList.toggle("close");
    overlayPhone.classList.toggle("overlay");
});






// dyslexique
var body = document.getElementById('body');
var access = document.getElementById('access');
var menu = document.getElementById('access-menu');

access.addEventListener("click", function() {
    // body.classList.toggle('dys');
    this.classList.toggle('expanded');
    menu.classList.toggle('visible');
});



document.querySelector('.font-toggle').addEventListener('change', function() {
    document.body.style.fontFamily = this.checked ? 'Open-Dyslexic' : 'Raleway';
});

document.querySelector('.bg-toggle').addEventListener('change', function() {
    document.body.style.backgroundColor = this.checked ? 'black' : 'transparent' ;
    document.body.style.color = this.checked ? 'white' : 'black' ;
});

