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