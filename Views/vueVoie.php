<?php $title = 'Voie'; ?>

<?php ob_start(); ?>
<br /> <br /><br/><br />
<table >
<tr> 
    <th width="30%">Voie admin</th>

 </tr>

 <?php foreach ($voie as $listVoies): ?>
    <tr>
    <td><?= $voie['voieAdmin'] ?></td>

    </tr>
 <?php endforeach; ?>
 </table>

<?php $contenu = ob_get_clean(); ?>
<?php require('templates/Tmp.php'); ?>
