<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/customer.css">
    
</head>
<body>
    <div id=navbar>
        <div id="s1">
            <h1>Sparks Bank</h1>
        </div>
        <div>
            <ul>
              <li class="nav-item">
                <a class="nav-link" href="index.php">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="services.php">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="customer.php">Customer</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="credit_cust_acc.php">Transfer Money</a>
                </li>
               
              <li class="nav-item">
                <a class="nav-link" href="contact_us.php">Contact Us</a>
              </li>
              </ul>
              </div>
            </div>
   
            <?php  
	include 'db_connect.php';
?>
<div class="active_customers_container">

<table border="1px" cellpadding="10">
			   <th>#</th>
			   <th>Customer ID</th>
         <th>Customer Name</th>
			   <th>Account No.</th>
			   <th>Mobile No.</th>
			   <th>Email ID</th>
			   <th>DOB</th>
			   <th>Current Balance</th>
			   <th>Citizenship</th>
			   <th>Debit Card No.</th>
			   <th>LastTransaction</th>
			   <th>Account Status</th>


<?php
	$sql = "SELECT * from bank_customers";
	$result = $conn->query($sql);
	
	if ($result->num_rows > 0) {	   
			  $Sl_no = 1; 
    // output data of each row
		while($row = $result->fetch_assoc()) {
			
		echo '
			<tr>
			<td>'.$Sl_no++.'</td>
			<td>'.$row['Customer_ID'].'</td>
      <td>'.$row['Customer_Name'].'</td>
			<td>'.$row['Account_no'].'</td>
			<td>'.$row['Mobile_no'].'</td>
			<td>'.$row['Email_ID'].'</td>
			<td>'.$row['DOB'].'</td>
			<td>$'.$row['Current_Balance'].'</td>
			<td>'.$row['CITIZENSHIP'].'</td>
			<td>'.$row['Debit_Card_No'].'</td>
			<td>$'.$row['LastTransaction'].'</td>
			<td>'.$row['Account_Status'].'</td>
			</tr>';
	}
	
	
}

?>

</table>
</div>


            <footer>
                <div class="footer">
                  <div class="contain">
                  <div class="col">
                    <h2>Services</h2>
                    <ul>
                        <li> Bank Accounts</li>
                        <li>Savings</li>
                        <li>Credit Card</li>
                    </ul>
                  </div>
                  <div class="col">
                    <h2>Links</h2>
                    <ul>
                      <li>Privacy Statement</li>
                      <li>Corporate Information</li>
                      <li>Net Banking</li>
                    </ul>
                  </div>
                  <div class="col">
                    <h2>Team</h2>
                    <ul>
                      <li>HR Team</li>
                      <li>Finance Team</li>
                      <li>Content Team</li>
                    </ul>
                  </div>
                  <div class="col">
                    <h2>Help & Guidance</h2>
                    <ul>
                      <li>The Sparks Bank</li>
                      <li>033 2464 432</li>
                      <li>thesparksbank@gmail.com</li>
                    </ul>
                  </div>
                  <div class="col address">
                    <h2>Address </h2>
                    <ul>
                      <li>Sky Towers, Service Road, Kolkata</li>
                  </ul>
                  </div>
            
                </div>
               </div>
            
                <div class="footer">
                    <ul class="socials">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-github"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                    </ul>
                    <div class="footer-copyright">
                        <p>Copyright &copy;2023: Sakshi Sahu (<u>The Sparks Foundation</u>) </p>
                    </div>
                </div>    
                </footer>
          
</body>
</html>