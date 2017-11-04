<?php
require"init.php";
$Email="foysal.gmail.com";
$password="1234";
$sql_query="INSERT INTO `registration` (`res_id`, `Email`, `password`) VALUES (NULL, '$Email','$password')";
if(mysqli_query($con,$sql_query))
{
echo"<h3>Data insertion success...</h3>";
}
else
{
echo"Data insertion error....",mysqli_error($con);

}
?>