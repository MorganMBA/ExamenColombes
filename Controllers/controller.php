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

    function getActif()
    {
        $listActif = getAllTypActif();
        require('./views/vueActif.php');
    }

    function getVoie()
    {
        $listVoies = getAllVoies();
        require('./views/vueVoie.php');
    }

    function getCategorie()
    {
        $listVoies = getAllCategories();
        require('./views/vueCategorie.php');
    }

?>