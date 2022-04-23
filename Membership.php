<html>
<head>
    <title> Membership.php </title>
    
<head>
<body>
    <?php
     $conn = mysqli_connect('localhost', 'nkaduk', 'BP2271YwooooodIcsAPWIllI', 'sleepy inn');
     if (!$conn){
        echo "Connection not good";
    }
    $Account_ID = $_POST['Account_ID'];
    
    $sql = "select * from `Customer` where Account_ID = '$Account_ID'";
    $result = $conn->query($sql);
    
    
    ?>

</body>