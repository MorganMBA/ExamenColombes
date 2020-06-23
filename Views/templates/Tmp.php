<!DOCTYPE html>
<html lang="en">
<head>
  <title><?=    $title ?></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="views/templates/css/sourceboost.css">
  <link rel="icon" type="image/png" sizes="90x90" href="views/templates/img/quest.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 650px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 10px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 67px) {
      .sidenav {
        height: auto;
        padding: 15px;
        display: none;
      }
      .sidenav div:target {
        display: block;
      }
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>
    <div class="container">
        <div class="row content">
            <div class="col-sm-3 sidenav"><br><br><br><br>
                <h4></h4>
                <ul class="nav nav-pills nav-stacked">
                    <li class="active">HOME</li>
                    <li><a href="index.php?action=getAge"> Afficher les âges </a></li>
                    <li><a href="index.php?action=getTypeactif"> Afficher les types actifs </a></li>
                    <li><a href="index.php?action=getVoieadmin"> Afficher les voies admin </a></li>
                    <li><a href="index.php?action=getCategorie"> Afficher les categories </a></li>


                    <li><a href="index.php?action=recherche"> Recherche </a></li>
                    <li><a href="index.php?action=deconnecter"> Se deconnecter </a></li>
                </ul><br>
            <div class="input-group">
        </div>
    </div>

    <div class="col-sm-9" name="bloc">
      <h4><small></small></h4>
      <hr>

      <div id="section0">
      </div>


       <?= $contenu ?>

        </div>
  </div>
  </div>

  <footer>
    <p> 
    
    </p>
  </footer>

</body>
</html>
