<html>
<head>
    <title> Membership.php </title>
    
<head>
<body>
    <?php
    $conn = new mysqli("localhost", "root", "", "sleepy_inn");
        if ($conn->connect_error){
        echo "Connection not good";
      }
    $Account_ID = $_POST['Account_ID'];
    $sql = "select * from `Customer` where Account_ID = '$Account_ID'";
    $result = $conn->query($sql);
    $Table = $result->fetch_all(MYSQLI_ASSOC);
    echo '<table id="Emplyees_table">';
    echo '<tr><th>Account ID</th><th>First Name</th><th>Last Name</th><th>Membership Type</th></tr>';
    foreach($Table as $row){
    echo '<tr><td>'.$row['Account_ID'].'</td><td>'.$row['First_Name'].'</td><td>'.$row['Last_Name'].'</td><td>'.$row['Membership_Type'].'</td></tr>';
}

    echo '</table>';

    
    ?>

</body>