<?php
    require('./controllers/controller.php');

    if(isset($_GET['action'])) {
        switch($_GET['action']) {
                case 'connexion':
                    verifyConnect($_POST['mail'],$_POST['password']);
                    break;
        }  if(isset($_SESSION['access'])){ 
            switch($_GET['action']) {  
        case 'getAge':
            addStudents();
            break;
        case 'getActif':
                addStudents();
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