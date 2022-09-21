<html>
<head>
<title>Skyblock Snipes</title>
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="error-bar.css">
<script src="index.js"></script>
<script src="error-bar.js"></script>
</head>
<center>
<div id="bdiv">
<br />
<h1 stye="font-family: Arial, sans-serif;">Skyblock Snipes</h1>
<input type="text" id="searchInput" onkeyup="searchTable()" placeholder="Search by Name...">
<div style="overflow-x:auto;">
  <table id="myTable">
    <thead>
    <tr>
      <th onclick="sortTable(0)">Name</th>
      <th onclick="sortTable(1)">Price</th>
      <th onclick="sortTable(2)">Profit</th>
      <th onclick="sortTable(3)">UUID</th>
      <th onclick="sortTable(4)">Time Sniped</th>
    </tr>
    </thead>
    <tbody>
    <!-- <tr>  PHP ECHO CODE HERE -->
      <?php
$con = mysqli_connect("localhost","root","");
if (!$con)
{
    die('<div class="bar error" style="width: 25%;">
    <i class="ico">&#9747;</i> Could not connect to database!
  </div>');
}
mysqli_select_db($con, "snipes");
$result = mysqli_query($con, "SELECT * FROM list ORDER BY time DESC");
while($row = mysqli_fetch_array($result))
{
    echo "<tr>";
    echo "<td>" . $row['name'] . "</td>";
    echo "<td>" . $row['price'] . "</td>";
    echo "<td>" . $row['profit'] . "</td>";
    echo "<td>" . $row['uuid'] . "</td>";
    echo "<td>" . $row['time'] . "</td>";
    echo "</tr>";

}
mysqli_close($con);
?>
      <!--<td>Name Example</td>
      <td>1,000,000</td>
      <td>999,999</td>
      <td>dff88ea40c4f</td>-->
    <!-- </tr>  END PHP ECHO CODE -->
    </tbody>
  </table>
</div>
<br />
<strong>Only the 10 newest snipes are kept on the server</strong>
</div></center>
</html>