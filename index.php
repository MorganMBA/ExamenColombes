<?php
    require('./controllers/controller.php');

    if(isset($_GET['action'])) {
        switch($_GET['action']) {
                case 'connexion':
                    verifyConnect($_POST['pseudo'],$_POST['password']);
                    break;
        }  if(isset($_SESSION['access'])){ 
            switch($_GET['action']) {  
        case 'getAge':
            getAge();
            break;
        case 'getActif':
            getAllTypActif();
                break;
        case 'getVoie':
            getVoie();
            break;
        case 'getVoie':
            getCategorie();
                            break;
        case 'deconnecter':  
            toDisconnect($_SESSION);
            break;
}
} else{
echo "erreur";
}
} else {
require('./views/vueIndex.php');
}   

?>