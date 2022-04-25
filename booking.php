<html>
<head>
    <title> booking.php </title>
    
<head>
<body>
    <?php
    $conn = new mysqli("localhost", "root", "", "sleepy_inn");
        if ($conn->connect_error){
        echo "Connection not good";
      }

      if(isset($_POST['formSubmit']) )
{
  $Location = $_POST['locationSelect'];
  $Room = $_POST['roomSelect'];


}



    $sql = "SELECT Name FROM hotel_location WHERE Name = '$Location'";
    $result = $conn->query($sql);
    $sql2 = "SELECT DISTINCT Room_Type FROM room_availability WHERE Room_type = '$Room' and Availability = 'Available'";
    $result2 = $conn->query($sql2);
    $Table = $result->fetch_all(MYSQLI_ASSOC);
    $Table2 = $result2->fetch_all(MYSQLI_ASSOC);
    echo '<table id="Emplyees_table">';

    echo '<tr><th>Location</th></tr>';

    foreach($Table as $row){
    echo '<tr><td>'.$row['Name'].'</td></tr>';
    }
    echo "<br>";
    echo '<tr><th>Room Type</th></tr>';
    foreach($Table2 as $row){
    echo '<tr><td>'.$row['Room_Type'].'</td></tr>';
    }

    echo '</table>';
    echo 'If a room is avaible, call here: 330-xxx-xxxx';
    
    ?>

</body>