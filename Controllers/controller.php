<?php
    require('./models/model.php');
    session_start();

    function verifyConnect($mail,$password)
    {
        $bdd = dbConnect();
        $ids = connect();
       if( ($ids['mail'] == $mail) && ($ids['motdepasse'] == $password)){
            $_SESSION['mail'] = $mail;
            $_SESSION['access'] = 1;
            require('./views/vueAccueil.php');
        } else {
            require('./views/vueIndex.php');
        }
    }

    function toDisconnect($name)
    {
        $verify = disconnect($name);
        if( $verify == TRUE ) {   
            session_destroy();
            require('./views/vueIndex.php');
        }
    }
?>