<?php
    require('./models/model.php');
    session_start();

    function verifyConnect($pseudo,$password)
    {
        $bdd = dbConnect();
        $ids = connect();
       if( ($ids['pseudo'] == $pseudo) && ($ids['motdepasse'] == $password)){
            $_SESSION['pseudo'] = $pseudo;
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

    function getAge()
    {
        $listage = getAllAge();
        require('./views/vueAge.php');
    }

    function getTypeactif()
    {
        $listtypeactif = getAllTypeactif();
        require('./views/vueTypeactif.php');
    }
    function getVoieadmin()
    {
        $listvoieadmin = getAllVoieadmin();
        require('./views/vueVoieadmin.php');
    }
    function getCategorie()
    {
        $listcategorie = getAllCategorie();
       // require('./views/vueCategorie.php');
    }
    
?>