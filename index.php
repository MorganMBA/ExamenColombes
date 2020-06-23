<?php
    require('./controllers/controller.php');

    if(isset($_GET['action'])) {
        switch($_GET['action']) {
                case 'connexion':
            echo $_POST['pseudo'];
            echo $_POST['password'];

                    verifyConnect($_POST['pseudo'],$_POST['password']);
                break;
                
        }  if(isset( $_SESSION['pseudo'])){ 
            
            switch($_GET['action']) {  
        case 'getAge':
            getAge();
            break;
        case 'getTypeactif':
            getTypeactif();
            break;
        case 'getVoieadmin':
            getVoieadmin();
            break;
        case 'getCategorie':
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