<?php

// securité du formulaire de contact a faire (php.ini)

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['message'])) {
    $prenom = filter_var($_POST['prenom'], FILTER_SANITIZE_STRING);
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    $objet = filter_var($_POST['objet'], FILTER_SANITIZE_STRING);
    $message_content = filter_var($_POST['message'], FILTER_SANITIZE_STRING);

    if ($email) {
        // remplacer exemplesite.fr
        $message = "Ce message vous a été envoyé via la page contact du site exemplesite.fr\n
        Nom : " . $prenom . "\n
        Email : " . $email . "\n
        Message : " . $message_content;

        // remplacer contact@exemplesite.fr
        $headers = 'From: contact@exemplesite.fr' . "\r\n" .
                   'Reply-To: ' . $email . "\r\n" .
                   'X-Mailer: PHP/' . phpversion();

        // remplacer exemplemail@gmail.com par le bon mail du destinataire
        $retour = mail("exemplemail@gmail.com", $objet, $message, $headers);

        if ($retour) {
            echo "<p>L'email a bien été envoyé.</p>";
        } else {
            echo "<p>Une erreur s'est produite lors de l'envoi de l'email.</p>";
        }
    } else {
        echo "<p>Adresse email invalide.</p>";
    }
}
?>
