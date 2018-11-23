<?php
    require('db.php');
    $Id = $_GET['teamId'];

    //should be
    $query = 'select * from `team` where `id` = "'.$Id.'";';

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
      <img height="200" width="200" src="image/<?php print_r($rows[0]['image']); ?>"/>
      <p>Name: <?php print_r($rows[0]['name']); ?></p>
      <p>Driver 1: <?php print_r($rows[0]['driver1']); ?></p>
      <p>Driver 2: <?php print_r($rows[0]['driver2']); ?></p>
      <p>Team Chief: <?php print_r($rows[0]['team_chief']); ?></p>
      <p>Technical Chief: <?php print_r($rows[0]['tech_chief']); ?></p>
      <p>Base: <?php print_r($rows[0]['base']); ?></p>
      <p>World Championships: <?php print_r($rows[0]['world_c']); ?></p>
      <p>Info: <?php print_r($rows[0]['info']); ?></p>

    </div>

  <div id="footer">
  <p>&copy; 2018 FastF1.</p>
  </div>
</body>
</html>
