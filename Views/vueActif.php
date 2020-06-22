<?php $title = 'Actif'; ?>

<?php ob_start(); ?>
<br /> <br /><br/><br />
<table >
<tr> 
    <th width="30%">Actif</th>
    <th width="30%">Nom Complet</th>

 </tr>

 <?php foreach ($actif as $listActif): ?>
    <tr>
    <td><?= $age['type'] ?></td>
    <td><?= $age['nomComplet'] ?></td>

    </tr>
 <?php endforeach; ?>
 </table>

<?php $contenu = ob_get_clean(); ?>
<?php require('templates/Tmp.php'); ?>
