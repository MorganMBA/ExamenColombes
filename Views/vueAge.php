<?php $title = 'Age'; ?>

<?php ob_start(); ?>
<br /> <br /><br/><br />
<table >
<tr> 
    <th width="30%">Age</th>

 </tr>

 <?php foreach ($age as $listage): ?>
    <tr>
    <td><?= $age['age'] ?></td>

    </tr>
 <?php endforeach; ?>
 </table>

<?php $contenu = ob_get_clean(); ?>
<?php require('templates/Tmp.php'); ?>
