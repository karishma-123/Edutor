<?php
session_start();



?>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>learntocode.com</title>
  <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
  <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/imagehover.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
<style>
  
    .price-table:hover
    {
       box-shadow: 5px 5px 5px lightgrey, -5px 0px 5px lightgrey;
    }
   .modal-header
    {
        background-color:#5FCF80;
        
    }

    a,a:hover
    {
        text-decoration: none;
        color:black;
    }
     .mybutton {
  border-radius: 20px;
  background-color: #5FCF80;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.mybutton span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.mybutton span:after {
  content: '\2605';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.mybutton:hover span {
  padding-right: 25px;
}

.mybutton:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
<style>
.slidecontainer {
    
    line-height: 30px;
    font-family: serif;
    font-size: 20px;
    color:gray;
    border-radius: 10%;
    background: white;
    margin-left:50px;
    margin-right:50px;
}

.slider {
    -webkit-appearance: none;
    width: 50%;
    height: 15px;
    border-radius: 5px;
    background: #d3d3d3;
    outline: none;
    opacity: 0.7;
    -webkit-transition: .2s;
    transition: opacity .2s;
}

.slider:hover {
    opacity: 1;
}

.slider::-webkit-slider-thumb {
    -webkit-appearance: none;
    appearance: none;
    width: 25px;
    height: 25px;
    border-radius: 50%;
    background: #4CAF50;
    cursor: pointer;
}

.slider::-moz-range-thumb {
    width: 25px;
    height: 25px;
    border-radius: 50%;
    background: #4CAF50;
    cursor: pointer;
}
    .utitle
    {
        font-size: 30px;
        font-weight: bolder;
        color: white;
        background-color: #5FCF80;
        height:70px;
        text-align: center;
        padding-top: 15px;
        
        
    }
    #userrating
    {
        border: 0.5px solid grey;
       
        width:800px;
        border-top: 0px solid white;
    }
    #userrating:hover
    {
         box-shadow: 0 10px 10px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
    }
    body
    {
       
    }
    @media screen and (max-width: 1000px) 
    {
    #userrating{width:auto;}
        
    
     }
</style>

<body>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="home.php"><span> Learn to Code</span></a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#feature">Features</a></li>
          <li><a href="#organisations">Organisations</a></li>
          <li><a href="#courses">Courses</a></li>
          <li><a href="#contactus">Contact Us</a></li>
          <li><a href="#" data-target="#login" data-toggle="modal">Log in</a></li>
          <li class="btn-trial"><a href="#" data-target="#signin" data-toggle="modal">Sign in</a></li>
        </ul>
      </div>
    </div>
  </nav>
<br><br><br><br>
<center>
  
    
    <div class="utitle">ADD-NEW-COURSE</div>
    <br>
    
</div>


  
    
    
</center>
<div class="container">
	<div class="row">
		<div class="col-md-8">

			<!--<h3> Welcome Faculty : <a href="welcomefaculty.php" ><span style="color:#FF0004"> </span></a> </h3>-->
            <?php
if(isset( $_POST[ 'submit' ] ) )
{
    $username=$_SESSION["username"];
    $title = $_POST[ 'videotitle' ];
    $v_url = $_POST[ 'VideoURL' ];
    $v_info = $_POST[ 'Videoinfo' ];
    //$username=$_POST["username"];



if($v_url=="" )
{
    echo "all inputs required";
}
else
{
    
if($_SERVER['REQUEST_METHOD']=="POST")//con establish
{
$localhost = "localhost";
$usernamew = "root";
$passwordw = "";
$db = "expdb";
$conn = mysqli_connect($localhost,$usernamew,$passwordw,$db);
if(!$conn){
echo "";
}
else
{
echo "";
}





$done = "
					<center>
					<div class='alert alert-success fade in __web-inspector-hide-shortcut__'' style='margin-top:10px;'>
					<a href='#' class='close' data-dismiss='alert' aria-label='close' title='close'>&times;</a>
					<strong><h3 style='margin-top: 10px;
					margin-bottom: 10px;'> Video added Sucessfully.</h3>
					</strong>
					</div>
					</center>
					";

		$sql = "insert into video values('$title','$v_url','$v_info','$username')";
        $result = mysqli_query($conn,$sql);
       //	echo "message sent!";
  
}}}
?>
			<fieldset>
			
				<form action="" method="POST" >
					<table class="table table-hover">

						<tr>
							<td><strong>VIDEO-TITLE </strong>
							</td>
							<td>
								<input type="text" name="videotitle">
							</td>

						</tr>
						<tr>
							<td><strong>VIDEO-URL</strong> </td>
							<td>
								<textarea name="VideoURL" rows="1" cols="100"></textarea>
							</td>
						</tr>
						<tr>
							<td><strong>VIDEO-DESCRIPTION</strong> </td>
							<td>
								<textarea name="Videoinfo" rows="5" cols="75"></textarea>
							</td>
						</tr>
						
						<td><button type="submit" name="submit" class="btn btn-primary">ADD-VIDEO</button>
						</td>
						
					</table>
				</form>
			</fieldset>
		</div>
	</div>
</body>