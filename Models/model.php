<?php

 function connect()
    {
        $bdd = dbConnect();
        $param = $bdd->query('SELECT mail, motdepasse FROM praticien');
        $result = $param->fetch();
        return $result; 
    }

    function getAllAge()
    {
        $bdd =  dbConnect();
        $req =  $bdd->query('SELECT * FROM age');

        return $req;
    }

    function getAllActif()
    {
        $bdd =  dbConnect();
        $req =  $bdd->query('SELECT * FROM actif');

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