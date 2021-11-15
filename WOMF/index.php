<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WHEEL OF MISSFORTUNE</title>
</head>
<body>
    <h1>WHEEL OF MISSFORTUNE</h1>
    <h2>(for League of Legends)<h2>
    <h4>RULES:<h4>
    <ul>
        <li>Spin after picking champion</li>
    </ul></br>
    <?php if (isset($_GET['spin']) == false) { ?>
<form>
    <input type="text" name="spin" value="spin" hidden>
    <input type="submit" value="SPIN THE WHEEL">
</form> 
        <?php
    } else {
        $user = 'root';
        $dbh = new PDO('mysql:host=localhost;dbname=WOMF', $user);
        $query = $dbh->prepare('SELECT id FROM WOMF');
        $query->execute([]);
        $aantal = count($query->fetchAll());
        if ($_GET['spin'] == 'EOD') {
            $id = 51;
        } else {
            $id = rand(1, $aantal);
        }
        foreach ($dbh->query("SELECT titel, Uitleg from womf WHERE id = $id", PDO::FETCH_ASSOC) as $key => $womf) {
            if ($womf["titel"] != "The Eye of Destiny") {
                ?> 
            <h2><?php echo $id . " " . $womf["titel"];?>
            </h2><h3><?php echo $womf["Uitleg"];?></h3>
            <form>
                <input type="text" name="spin" value="spin" hidden>
                <input type="submit" value="SPIN THE WHEEL AGAIN">
            </form> <?php
            } else {
                if ($_GET['spin'] != "EOD") {
                    ?>
            <form>
                <input type="text" name="spin" value="EOD" hidden>
                <input type="submit" value="SPIN THE EYE OF DESTINY">
            </form>
                    <?php
                } else {
                    $querys = $dbh->prepare('SELECT id FROM EOD');
                    $querys->execute([]);
                    $aantall = count($querys->fetchAll());
                    $idd = rand(1, $aantall);
                    foreach ($dbh->query("SELECT titel from EOD WHERE id = $idd", PDO::FETCH_ASSOC) as $key => $EOD) {     
                        ?>
                        <h2> EYE OF DESTINY</h2>
                        <h3> <?php echo $EOD["titel"];?> </h3> <?php
                    }
                    ?>
                    <form>
                        <input type="text" name="spin" value="spin" hidden>
                        <input type="submit" value="SPIN THE WHEEL AGAIN">
                    </form>
                    <?php
                }
            }
        }
    }
    ?>
</body>
</html>