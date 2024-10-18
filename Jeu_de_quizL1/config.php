
<?php //stocker les identifiants saisis dans la base de données
if (isset($_POST['name1']) && isset($_POST['name2']) && isset($_POST['name3']) && isset($_POST['name3'])) {
    $player1 = $_POST['name1'];
    $player1 = $_POST['name2'];
    $player1 = $_POST['name3'];
    $player1 = $_POST['name4'];
    
    //connexion à la bd
    $host = 'localhost';
    $dbname = 'mlr3'; //Nom de la base de données
    $user = 'root'; //Nom d'utilisateur de la base de données
    $password = ''; //Mot de passe de la base de données

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMOSE, PDO:: ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo "Connexion failed:" . $e->getMessage();
    }

    
}
?>