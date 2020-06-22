<?php $title = 'Catrgorie'; ?>

<?php ob_start(); ?>
<br /> <br /><br/><br />
<table >
<tr> 
    <th width="30%">Categorie</th>

 </tr>

 <?php foreach ($age as $listCategories): ?>
    <tr>
    <td><?= $age['categorie'] ?></td>

    </tr>
 <?php endforeach; ?>
 </table>

<?php $contenu = ob_get_clean(); ?>
<?php require('templates/Tmp.php'); ?>
