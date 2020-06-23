<?php $title = 'Categorie'; ?>

<?php ob_start(); ?>
<br /> <br /><br/><br />
<table >
<tr> 
    <th width="30%">Categorie</th>

 </tr>

 <?php
  foreach ($listcategorie as $categorie): ?>
    <tr>
    <td><?= $categorie['categorie'] ?></td>
    <td><a href="index.php?action=supprimercategorie">Supprimer</a></td>
    <td><a href="index.php?action=modifiercategorie">Modifier</a></td>
    </tr>
 <?php endforeach; ?>
 </table>

<?php $contenu = ob_get_clean(); ?>
<?php require('templates/Tmp.php'); ?>
