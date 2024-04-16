<?php

try { 
    $db= new PDO('mysql:host=localhost;dbname=litis','root',''); 
}
catch (Exception $e){ 
    die('Erreur: ' . $e->getMessage()); 
}

?>