<?php

	if(isset($_POST['search']))
	{
		$valueToSearch = $_POST['ValueToSearch'];
		$query = "SELECT * FROM  `praxis` WHERE CONCAT (`arztname`) LIKE '%".ValueToSearch."%'";
		$search_result = filterTable($query);
	}
	else{
		$query = "SELECT * FROM `praxis`";
		$search_result = filterTable($query);
	}
	function filterTable($query)
	{
		$connect = mysqli_connect("localhost", "root", "", "doctimer");
		$result = mysqli_query($connect, $query);
		return $result;
	}

?>

<!doctype html>
<html>
	<head>
		<title> DocTimer </title>
		<link href="main.css" rel="stylesheet" type="text/css" >
		<script src="buche.js" type="text/javascript"></script>
	</head>

	<body>

		<h1>Willkommen bei DocTimer<br>
		</h1>

		<ul>
			<li><a href=index.html> Home </a></li>
			<li> Termin buchen </li>
			<li><a href="uebersicht.html"> Terminuebersicht </a></li>
		</ul>


		<h2> buchen Sie jetzt einen Termin <br>
		</h2>

		<img src=""><br>

		<form>
			<input type="text" name="ValueToSearch" placeholder="Bitte geben sie den Arzt ein"<br>
			<input type="submit" name="search" value="filter"<br>

			<table>
				<tr>
					<th> arztname </th>
					<th> arztart </th>
					<th> anschrift </th>
				</tr>
				<?php while ($row = mysqli_fetch_array($search_result)):?>
				<tr>
					<td><?php echo $row['arztname'];?</td>
				</tr>
			<?php endwhile;?>
			</table>
		</form>

		<input id="eventClick" type ="button" value="PLZ eingeben">
		<input id="eventClick2" type ="button" value="nach einem Arzt suchen">

		
		<script>
           
            
			function eventClicker() {  var ort = prompt( "Bitte geben Sie Ihre PLZ ein");
                                     alert("Sie haben" + ort + "eingegeben");
                                     
				};
				document.getElementById ('eventClick').addEventListener ('click', eventClicker);
				function eventClicker2() { var name = prompt('Bitte geben Sie den Namen Ihres Arztes ein');
                                          confirm("Wir suchen nach" + name + ", bitte haben Sie Geduld.");
				};
				document.getElementById ('eventClick2').addEventListener ('click', eventClicker2);


			</script>

</body>
</html>
