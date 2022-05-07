<html>
<head>
    <title> Check Booking </title>
</head>

    <body>
        <?php
        $conn = new mysqli("localhost", "root", "", "sleepy_inn");
        if ($conn->connect_error){
            echo "Connection not good";
        }
        $Account_ID = $_POST["Account_ID"];
        $Room_ID = $_POST["Room_ID"];
        $sql = "delete from `booking_information` where Account_ID = '$Account_ID' and Hotel_Room_ID = '$Room_ID'";
        $result = $conn->query($sql);

         echo "The room number, $Room_ID, for your account has been unbooked.";
         echo "We hope to serve you again in the future!"; 
         
         $sql = "update `room_availability` set Availability = 'Available' where hotel_room_ID = '$Room_ID'";
        $result = $conn->query($sql);
         /*$sql = "SELECT Last_Name, First_Name, Hotel_Room_ID, Date_Booked, Checked_In FROM `Booking_Information` natural join    `Customer`";
        $result = $conn->query($sql);
        $Table = $result->fetch_all(MYSQLI_ASSOC);
        echo '<table id="Emplyees_table">';
        echo '<tr><th>First Name</th><th>Last Name</th><th>Hotel_Room_ID</th><th>Date_Booked</th><th>checked_In</th></tr>';
        foreach($Table as $rowto){
        echo '<tr><td>'.$row['First_Name'].'</td><td>'.$row['Last_Name'].'</td><td>'.$row['Hotel_Room_ID'].'</td><td>'.$row['Date_Booked'].'</td><td>'.$row['Checked_In'].'</td></tr>';
}

        echo '</table>';*/



        ?>
        
    </body>
</html>
