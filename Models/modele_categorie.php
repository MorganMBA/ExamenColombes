<!Doctype html>
<html>
<head>
<link rel="stylesheet" href="./css/mm_travel2.css" type="text/css" />
</head>
<body bgcolor="#C0DFFD">
<?php
        // création du DSN
        $dsn = 'mysql:host=localhost;dbname=mydb;port=3306;charset=utf8';

        // Création et test de la connexion

        try {

            $pdo = new PDO($dsn, 'root' , '');
        }
        catch (PDOException $exception) {

            test('PDOException',$exception->getMessage());
            exit('Erreur de connexion à la base de données');
        
        }

        // Requête pour tester la connexion SELECT *  

        $query = $pdo->query('SELECT * FROM categorie');

        $resultat = $query->fetchAll();

       
        ?>
</body>
</html>