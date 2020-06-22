<?php

 function connect()
    {
        $bdd = dbConnect();
        $param = $bdd->query('SELECT pseudo, motdepasse FROM praticien');
        $result = $param->fetch();
        return $result; 
    }

    function getAllAge()
    {
        $bdd =  dbConnect();
        $req =  $bdd->query('SELECT * FROM age');

        return $req;
    }

    function getAllTypActif()
    {
        $bdd =  dbConnect();
        $req =  $bdd->query('SELECT * FROM typeactif');

        return $req;
    }

    function getAllVoies()
    {
        $bdd =  dbConnect();
        $req =  $bdd->query('SELECT * FROM voieadmin');

        return $req;
    }

    function getAllCategories()
    {
        $bdd =  dbConnect();
        $req =  $bdd->query('SELECT * FROM categorie');

        return $req;
    }

    function disconnect($session)
    {
        if (isset($session)){
            return TRUE;
        }
    }
    function dbConnect() 
    {
        $bdd = new PDO('mysql:dbname=mydb;host=localhost','root','');
        return $bdd;     
    }
?>