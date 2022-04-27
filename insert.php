<html>
<head>
    <title> insert.php </title>
    
<head>
<body>
    <?php
     $conn = mysqli_connect("localhost", "root", "", "sleepy_inn");
     if (!$conn){
        echo "Connection not good";
    }
    $Account_ID = $_POST["Account_ID"];
    $Hotel_Room_ID = $_POST["HRID"];
    $Hotel_ID = $_POST["Hotel_ID"];
    $Date_Booked = $_POST["Date_Booked"];
    
    $sql = "insert into `Booking_Information` values ('$Account_ID', '$Hotel_Room_ID', '$Hotel_ID', '$Date_Booked', 'N')";
    if ($conn->query($sql) === TRUE) {
  echo "Your room has been booked!";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$sql = "CREATE TRIGGER `occ_update` after insert on `Booking_Information`
    BEGIN
    UPDATE `Room_Availability` set Availability = 'Occupied' where Hotel_Room_ID = '$Hotel_Room_ID'; 
    END;";
    
    ?>

</body>