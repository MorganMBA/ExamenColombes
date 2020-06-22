<?php $title = 'Accueil'; ?>

<?php ob_start(); ?>
    <?php 
        echo "Bonjour ".$_SESSION['username'];
    ?>
<?php $contenu = ob_get_clean(); ?>
<?php require('templates/Tmp.php'); ?>
