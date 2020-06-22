<?php
    require('./controllers/controller.php');

    if(isset($_GET['action'])) {
        switch($_GET['action']) {
                case 'connexion':
                    verifyConnect($_POST['mail'],$_POST['password']);
                    break;
        }            
    } else {
        require('./views/vueIndex.php');
    }
?>