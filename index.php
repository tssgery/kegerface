<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Eric's Kegerator</title>
<link href="http://fonts.googleapis.com/css?family=Oswald" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="beer.css">
</head>
<body>
<h1><p align='center'>::: Eric's Kegerator :::</h1></p>
	
<?php 
$db_host = 'localhost';
$db_user = 'root';
$db_pwd = 'abc123';
$database = 'beer';
$table = 'Beer';
if (!mysql_connect($db_host, $db_user, $db_pwd))    
	die("Can't connect to database");
if (!mysql_select_db($database))    
	die("Can't select database");

// sending query
$result = mysql_query("SELECT 
        Beer.Tap,
        Beer.Beer,
        Beer.Brewery,
        Beer.Style,
        Beer.ABV,
        Beer.Hops,
        Beer.SRM as Color
FROM    Beer
WHERE   Tap > 0 
GROUP BY Beer.Tap, 
        Beer.Beer, 
        Beer.Brewery, 
        Beer.Style, 
        Beer.ABV, 
        Beer.Hops, 
        Beer.SRM
ORDER BY Tap ASC
");
if (!$result) {    
	die("Query to show fields from table failed");
}
$fields_num = mysql_num_fields($result);
echo "<table align='center'><thead>";

// printing table headers
for($i=0; $i<$fields_num; $i++)
{    $field = mysql_fetch_field($result);
    echo "<th>{$field->name}</th>";
}
echo "</thead>\n";


while($row = mysql_fetch_array($result))
  
{
  echo "<tr>";
  echo "<td align='center'><h2>" . $row['Tap'] . "</h2></td>";
  echo "<td><h2>" . $row['Beer'] . "</h2></td>";
  echo "<td>" . $row['Brewery'] . "</td>";
  echo "<td><h2>" . $row['Style'] . "</h2></td>";
  echo "<td>" . $row['ABV'] . "</td>";
  echo "<td><img height='95' width='auto'  src='images/" . $row['Hops'] . " Hops - new.png' width='200'</td>";
  echo "<td><img height='70' width='auto' src='images/SRM "	.	$row['Color']	.	".png' height='75'</td>";
  echo "</tr>";
  
  }
echo "</table>";




mysql_free_result($result);
?>

</body>
</html>
