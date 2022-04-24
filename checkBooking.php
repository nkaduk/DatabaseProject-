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
        echo 'here';
        $Account_ID = $_POST["Account_ID"];
        $sql = "SELECT LastName, FirstName, Hotel-Room_ID, DateBooked, CheckedIn FROM Booking Information natural join    Customer WHERE Account_ID = $Account_ID";
        $result = $conn->query($sql);


        ?>

    </body>
</html>