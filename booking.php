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

if ($Location == "Sleepy Inn near Highway 89"){
$hotelNameInt = 1001;
} elseif ($Location == "Sleepy Inn of Washington DC"){
$hotelNameInt = 1002;
}else{
  $hotelNameInt = 1003;
}



    $sql = "select Name, Hotel_ID, Room_Number, Room_Type from Hotel_Information natural join Room_Availability where Room_Type = '$Room' and Hotel_ID = '$hotelNameInt' and Availability = 'Available'";

    $result = $conn->query($sql);
    $Table = $result->fetch_all(MYSQLI_ASSOC);
    echo '<table id="Emplyees_table">';
    echo '<tr><th>Name</th><th>Hotel_ID</th><th>Room_Number</th><th>Room_Type</th></tr>';
    foreach($Table as $row){
    echo '<tr><td>'.$row['Name'].'</td><td>'.$row['Hotel_ID'].'</td><td>'.$row['Room_Number'].'</td><td>'.$row['Room_Type'].'</td></tr>';
}

    echo '</table>';
    /*$sql = "SELECT Name FROM hotel_location WHERE Name = '$Location'";
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
    */
    ?>

</body>