<?php
require('db.php');
$Id = $_GET['driverId'];

//should be
$query = 'select * from `driver` where `driverId` = "'.$Id.'";';

// print_r($query)


//should be
$result = mysqli_query($con,$query);

$rows = $result->fetch_all(MYSQLI_ASSOC);
// print_r($rows[0]['name']);
//die();
?>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <link rel="stylesheet" type="text/css" href="css/style.css">
<title>FastF1</title>
</head>
<body>
  <div id="header">
  <h1>FastF1</h1>
  </div>

  <div id="menu">
  <ul>
    <li class="active"><a href="index.html">Home</a></li>
                    <li><a href="video.html">Video</a></li>
                    <li><a href="driver.html">Driver</a></li>
                    <li><a href="team.html">Team</a></li>

  </ul>
  </div>

    <div>

        <img height="150" width="150" src="image/<?php print_r($rows[0]['image']); ?>"/>
        <p>Name: <?php print_r($rows[0]['name']); ?></p>
        <p>Number: <?php print_r($rows[0]['number']); ?></p>
        <p>Team: <?php print_r($rows[0]['team']); ?></p>
        <p>Country: <?php print_r($rows[0]['Country']); ?></p>
        <p>DOB: <?php print_r($rows[0]['d_birth']); ?></p>
        <p>Place of Birth: <?php print_r($rows[0]['p_birth']); ?></p>
        <p>Points: <?php print_r($rows[0]['points']); ?></p>
        <p>Grand Prix Score: <?php print_r($rows[0]['grand_prix']); ?></p>
        <p>High Race: <?php print_r($rows[0]['high_race']); ?></p>
        <p>Biography: <?php print_r($rows[0]['biography']); ?></p>

    </div>

  <div id="footer">
  <p>&copy; 2018 FastF1.</p>
  </div>
</body>
</html>

<?php
    // mysql_close($con);
?>
