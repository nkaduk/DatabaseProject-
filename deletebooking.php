<html>
<head>
    <title> Check Booking <\title>
<\head>

    <body>
        <?php
        $conn = mysqli_connect('localhost', 'nkaduk', 'BP2271YwooooodIcsAPWIllI', 'sleepy inn');
        if (!$conn){
            echo "Connection not good";
        }
        $Account_ID = $_POST[‘Account_ID’];
        $Room_ID = $_POST['Room_ID'];
        $sql = "delete from `booking information` where Account_ID = '$Account_ID' and Room_ID = '$Room_ID'";
        $result = $conn->query($sql);


        ?>
        
    <\body>
<\html>