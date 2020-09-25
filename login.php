<!--Login Page-->
<?php
session_start(); #Session Start
include "include/db.php"; #Include the Database Connection
if(isset($_SESSION['uid'])) #Checking For the User
{
  $u=$_SESSION['uid'];
  $f=substr($u,0,1);
  $s=substr($u,3,1);

  #Query For Selecting Details From the Table
  $query8="Select * from `sectionHead` where sectionHeadID='$u'";

    $result8=mysqli_query($conn,$query8); #Connecting Query with the Connection

    $count8=mysqli_num_rows($result8);


  if($count8==1){ #Checking the First character of String and redicted to perticular user
    header('Location:adminstaff/Admin_dashboard.php');
  }else{

  if($f=='F'){
    header('Location:teaching/teaching_dashboard.php');
  }else if($f=='S'){
    header('Location:non-teaching/nonteaching_dashboard.php');
  }else if($f=='1' && $s=='1'){
    header('Location:student/Student_dashboard.php');
  }else if($f=='1' && $s=='3'){
    header('Location:phd/phd_dashboard.php');
  }else{
    echo "INVALID!!";
  }
  }

}

 ?>

<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1"> <!--Display Scaling-->
  <title>LEAVE_MANAGEMENT_SYSTEM</title>
  <link href="css/register.css" rel="stylesheet"><!--Linking With Css Style Sheet-->
</head>

<body>


  <?php include "include/header.php"; ?><!--Include the header navbar-->





<div class="box" >

<div class="panel_header">
<h2>LOGIN</h2>
</div>



<!--login Dashboard-->
<div class="panel_body">
<p class="text-warning"><i>Login to Dashboard</i><p>
  <!--Form For Taking Input From The User-->
<form action="login.php" method="post" name="log">
<div>
<label>--LOGIN ID--</label><br>
<input  name="enrollment" placeholder="F/S/18010101"  required>
</div><br>
<div>
<label>--PASSWORD--</label><br>
<input type="password" name="password" placeholder="Password" onchange="enroll();" required>
</div>

<input type="hidden" id="f" name="f" />
<input type="hidden" id="s" name="s" />


<button type="submit" name="login" value="Login">Login</button><br><br>
</form><br/>
</div>


<div class="panel_footer"><p>Don't have an account?<a style="color:red" href="#"> Contact With Admin!!!</a></p></div>
</div>


<?php include "include/footer_student.php"; ?>

<!--Script For Slicing the 1st and 3rd letter of the String-->
<script>
  function enroll(){
    var du = document.log.enrollment.value;
    var res = du.slice(0,1);
    var res2 = du.slice(3,4);

    document.log.f.value = res;
    document.log.s.value = res2;
  }
</script>


</body>

</html>

<?php
include "include/db.php";


if(isset($_POST['login']))
{
  $enrollment=$_POST['enrollment'];
  $password=$_POST['password'];
  $f=$_POST['f'];
  $s=$_POST['s'];


#Checking the Id and Password Form the table
$query="Select * from `account` where userid='$enrollment' AND password='$password'";

$result=mysqli_query($conn,$query); #Connecting Query with the Connection

$count=mysqli_num_rows($result);

#Exist then Redirection to the perticular User Dashboard
if($count==1)
{
  $data=mysqli_fetch_assoc($result);

  $id=$data['userid'];

  session_start(); #Starting the Session

  $_SESSION['uid']=$id;

  $query1="Select * from `sectionHead` where sectionHeadID='$enrollment'";

  $result1=mysqli_query($conn,$query1); #Connecting Query with the Connection

  $count1=mysqli_num_rows($result1);

if($count1==1){
  header('Location:adminstaff/Admin_dashboard.php');
}else{

if($f=='F'){
  header('Location:teaching/teaching_dashboard.php');
}else if($f=='S'){
  header('Location:non-teaching/nonteaching_dashboard.php');
}else if($f=='1' && $s=='1'){
  header('Location:student/Student_dashboard.php');
}else if($f=='1' && $s=='3'){
  header('Location:phd/phd_dashboard.php');
}else{
  echo "INVALID!!";
}
}


}
else{
  ?>
  <script>
    alert('Email or Password not match !!');
    window.open('login.php','_self');
  </script>
<?php

}



}





 ?>
