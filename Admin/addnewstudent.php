<?php
if(!isset($_SESSION)){ 
  session_start(); 
}
define('TITLE', 'Add Student');
define('PAGE', 'students');
include('./adminInclude/header.php'); 
include('../dbConnection.php');

 if(isset($_SESSION['is_admin_login'])){
  $adminEmail = $_SESSION['adminLogEmail'];
 } else {
  echo "<script> location.href='../index.php'; </script>";
 }
 if(isset($_REQUEST['newStuSubmitBtn'])){
  // Checking for Empty Fields
  if(($_REQUEST['stu_fname'] == "") || ($_REQUEST['stu_lname'] == "") || ($_REQUEST['stu_email'] == "") || ($_REQUEST['stu_pass'] == "") || ($_REQUEST['stu_detail'] == "")){
   // msg displayed if required field missing
   $msg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2" role="alert"> Fill All Fileds </div>';
  } else {
   // Assigning User Values to Variable
   $stu_fname = $_REQUEST['stu_fname'];
   $stu_lname = $_REQUEST['stu_lname'];
   $stu_email = $_REQUEST['stu_email'];
   $stu_pass = $_REQUEST['stu_pass'];
   $stu_detail = $_REQUEST['stu_detail'];

    $sql = "INSERT INTO student (stu_fname,stu_lname,stu_email, stu_pass, stu_detail) VALUES ('$stu_fname','$stu_lname', '$stu_email', '$stu_pass', '$stu_detail')";
    if($conn->query($sql) == TRUE){
     // below msg display on form submit success
     $msg = '<div class="alert alert-success col-sm-6 ml-5 mt-2" role="alert"> Student Added Successfully </div>';
     //echo uniqid();
    } else {
     // below msg display on form submit failed
     $msg = '<div class="alert alert-danger col-sm-6 ml-5 mt-2" role="alert"> Unable to Add Student </div>';
    }
  }
  }
 ?>


<div class="col-sm-6 mt-5  mx-3 jumbotron ">
  <h3 class="text-center"><u>OFFLINE STUDENT REGISTRATION</u></h3><br><b>
  <form action="" method="POST" enctype="multipart/form-data">


<!--Year Drop down-->
<div class="form-group">
  Year <br>
  <select id="year" name="year">
    <option>--Select year--</option>
    <option value="0">2021</option>
    <option value="1">2022</option>
    <option value="2">2023</option>
    <option value="3">2024</option>
    <option value="4">2025</option>
</select>
 <!-- End Year Drop down-->


  <!-- Start Index-->
    <div class="form-group">
      <label for="stu_id">Index No</label>
      <input type="text" class="form-control" id="stu_id" name="stu_id" tabindex="1" maxlength="20" size="20" name="stu_id" autocomplete="off"
          value="<?php echo  "S". rand(0,999)?>" readonly >
    </div>
 <!-- End Index-->


<!-- Start date-->
    <div class="form-group">
    Date <br>
    <input type="text" name="frmDateReg" required id="frmDate" value="" readonly>
<script>
function getDate(){
   var todaydate = new Date();
   var day = todaydate.getDate();
   var month = todaydate.getMonth() + 1;
   var year = todaydate.getFullYear();
   var datestring = day + "/" + month + "/" + year;
   document.getElementById("frmDate").value = datestring;
  } 
getDate(); 
</script>
    </div>
<!-- End date-->


    <div class="form-group">
      <label for="stu_fname">First Name</label>
      <input type="text" class="form-control" id="stu_fname" name="stu_fname">
    </div>
    <div class="form-group">
      <label for="stu_lname">Last Name</label>
      <input type="text" class="form-control" id="stu_lname" name="stu_lname">
    </div>
    <div class="form-group">
      <label for="stu_phone">Phone</label>
      <input type="text" class="form-control" id="stu_phone" name="stu_phone">
    </div>
    <div class="form-group">
      <label for="stu_address">Address</label>
      <input type="text" class="form-control" id="stu_address" name="stu_address">
    </div>

<!--Check Box-->
    Select Attend Subjects </b>
  <div class="form-check">
 <br>
  <input class="form-check-input" type="checkbox" value="" id="maths">
  <label class="form-check-label" for="maths">
   Combined Maths
  </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input class="form-check-input" type="checkbox" value="" id="physics">
  <label class="form-check-label" for="physics">
   Physics &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </label>
  <input class="form-check-input" type="checkbox" value="" id="chemistry">
  <label class="form-check-label" for="chemistry">
   Chemistry &nbsp;&nbsp;&nbsp;
  </label>
</div>
<br><b>
<div class="form-group">
      <label for="amount">Amount</label>
      <input type="text" class="form-control" id="amount" name="amount">
    </div>
    
<br>

    <div class="text-center">
      <button type="submit" class="btn btn-danger" id="newStuSubmitBtn" name="newStuSubmitBtn">Submit</button>
      <a href="students.php" class="btn btn-secondary">Close</a>
    </div>
  
    <?php if(isset($msg)) {echo $msg; } ?>
  </form>
</div>
</div>  <!-- div Row close from header -->
</div>  <!-- div Conatiner-fluid close from header -->
</div>
<?php
include('./adminInclude/footer.php'); 
?>