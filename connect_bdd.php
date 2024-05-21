<?php

try { 
    $db= new PDO('mysql:host=localhost;dbname=litis','root','root'); 
}
catch (Exception $e){ 
    die('Erreur: ' . $e->getMessage()); 
}

?>