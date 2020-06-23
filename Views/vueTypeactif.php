<?php $title = 'Typeactif'; ?>

<?php ob_start(); ?>
<br /> <br /><br/><br />
<table >
<tr> 
    <th width="30%">Type Actif</th>

 </tr>

 <?php
  foreach ($listtypeactif as $typeactif): ?>
    <tr>
    <td><?= $typeactif['nomComplet'] ?></td>
    <td><a href="index.php?action=supprimertypeactif">Supprimer</a></td>
    <td><a href="index.php?action=modifiertypeactif">Modifier</a></td>
    </tr>
 <?php endforeach; ?>
 </table>

<?php $contenu = ob_get_clean(); ?>
<?php require('templates/Tmp.php'); ?>
