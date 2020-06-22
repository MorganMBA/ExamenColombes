<?php $title = 'Connexion'; ?>

<?php ob_start(); ?>
    <form class="form-signin" action="index.php?action=connexion" method="POST">
        <div class="text-center mb-4">
            <h2 class="h3 mb-3 font-weight-normal"> <b>ESPACE ADMINISTRATEUR</b></h2>
        </div>
        
        <div class="form-label-group">
            <input type="text" class="form-control" name="username"  required >
            <label for="">pseudo : </label>
        </div>

        <div class="form-label-group">
            <input type="password" class="form-control" name="password" required>
            <label for="">Mot de passe : </label>
        </div>
        
        <input type="hidden" name="access" value="1">
        
        <button class="btn btn-lg btn-primary btn-block" type="submit">Se connecter</button>
    </form>
<?php $contenu = ob_get_clean(); ?>
<?php require('templates/template.php'); ?>
