<?php
session_start();

$timeout_duration = 1800; // 30 minutes

if (isset($_SESSION['last_activity'])) {
    if ((time() - $_SESSION['last_activity']) > $timeout_duration) {
        session_unset();
        session_destroy();
    }
} else {
    $_SESSION['last_activity'] = time();
}
?>
