<?php $title = 'Age'; ?>

<?php ob_start(); ?>
<br /> <br /><br/><br />
<table >
<tr> 
    <th width="30%">Age</th>

 </tr>

 <?php
  foreach ($listage as $age): ?>
    <tr>
    <td><?= $age['age'] ?></td>
    <td><a href="index.php?action=supprimerage">Supprimer</a></td>
    <td><a href="index.php?action=modifierage">Modifier</a></td>
    </tr>
 <?php endforeach; ?>
 </table>

<?php $contenu = ob_get_clean(); ?>
<?php require('templates/Tmp.php'); ?>
