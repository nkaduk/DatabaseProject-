<html>
<head>
    <title> Check Booking </title>
</head>

    <body>
        <?php
        $conn = mysqli_connect("localhost", "root", "", "sleepy_inn");
        if (!$conn){
            echo "Connection not good";
        }
        $Account_ID = $_POST["Account_ID"];
        $sql = "SELECT Last_Name, First_Name, Hotel_Room_ID, Date_Booked, Checked_In FROM `Booking_Information` natural join    `Customer` WHERE Account_ID = '$Account_ID'";
        $result = $conn->query($sql);

        while ($row = $result->fetch_assoc()) {
            printf("%s %s %s %s (%s)\n", $row["Last_Name"], $row["First_Name"], $row["Hotel_Room_ID"], $row["Date_Booked"], $row["Checked_In"]);
        }
        ?>
        
    </body>
</html>