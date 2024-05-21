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






// général var
var body = document.getElementById('body');
var menu = document.getElementById('access-menu');

// index.php var
var access = document.getElementById('access');
var chatbot = document.getElementById('chatbot');
var d_header = document.getElementById('desktop-header');
var p_header = document.getElementById('phone-header');
var text = document.querySelectorAll('.text');
var BonW = document.querySelectorAll('.BonW');


access.addEventListener("click", function() {
    this.classList.toggle('expanded');
    menu.classList.toggle('visible');
});

chatbot.addEventListener("click", function() {
    this.classList.toggle('square');
});



document.querySelector('.font-toggle').addEventListener('change', function() {
    document.body.style.fontFamily = this.checked ? 'Open-Dyslexic' : 'Raleway';
});

document.querySelector('.bg-toggle').addEventListener('change', function() {
    if (this.checked) {
        document.body.classList.add('accessibility-mode');
        d_header.classList.add('header-access');
        p_header.classList.add('header-access');
        
        BonW.forEach(function(element) {
            element.classList.add('accessibility-mode_BonW')
        });
        
        text.forEach(function(element) {
            element.classList.add('color_b');
        });
    } 
    else {
        document.body.classList.remove('accessibility-mode');
        d_header.classList.remove('header-access');
        p_header.classList.remove('header-access');
        
        BonW.forEach(function(element) {
            element.classList.remove('accessibility-mode_BonW')
        })

        text.forEach(function(element) {
            element.classList.remove('color_b');
        });
    }
});



