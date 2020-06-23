<?php $title = 'Voieadmin'; ?>

<?php ob_start(); ?>
<br /> <br /><br/><br />
<table >
<tr> 
    <th width="30%">Voieadmin</th>

 </tr>

 <?php 
  foreach ($listvoieadmin as $voieadmin): ?>
    <tr>
    <td><?= $voieadmin['voieAdmin'] ?></td>
    <td><a href="index.php?action=supprimervoieadmin">Supprimer</a></td>
    <td><a href="index.php?action=modifiervoieadmin">Modifier</a></td>
    </tr>
 <?php endforeach; ?>
 </table>

<?php $contenu = ob_get_clean(); ?>
<?php require('templates/Tmp.php'); ?>
