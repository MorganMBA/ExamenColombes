<?php

 function connect()
    {
        $bdd = dbConnect();
        $param = $bdd->query('SELECT mail, motdepasse FROM praticien');
        $result = $param->fetch();
        return $result; 
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