<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transfer Money</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <link rel="stylesheet" href="css/credit_customer_ac.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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


<div class="cust_credit_container">
	<form method="post">
    <input class="customer" type="select" name="customer_name" placeholder="Customer Name" required>
    <br>
    <input class="customer" type="text" name="credit_amount" placeholder="Amount" required><br>
    <input class="customer" type="submit" name="credit_btn" value="Send Money" >
    </form>
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

<?php 
if(isset($_POST['credit_btn'])){

    $customer_name = $_POST['Customer_Name'];
    $credit_amount = $_POST['credit_amount'];

	if(!is_numeric($_POST['credit_amount'])){

		echo '<script>alert("Invalid amount")</script>';
	}
	
	else{ 
    
	include 'db_connect.php';

	//Customer details required for transaction
	$sql = "SELECT * FROM bank_customers WHERE Customer_Name = customer_name; ";
    $result = $conn->query($sql);
    if($result->num_rows > 0){
    $row = $result->fetch_assoc();
	$customer_name = $row['Customer_Name'];
	$customer_id = $row['Customer_ID'];
	$customer_ifsc= $row['IFSC_Code'];
	$customer_mob = $row['Mobile_no'];
	$customer_netbal = $row['Current_Balance'] + $credit_amount;
	$customer_passbk = "passbook_".$customer_id;
	

    
    	//Generate Transaction ID
		$transaction_id = mt_rand(100,999).mt_rand(1000,9999).mt_rand(10,99);
		
		//Transaction Date

		date_default_timezone_set('Asia/Kolkata'); 
		$transaction_date = date("d/m/y h:i:s A");
		
		//Remark or Narration
		$remark = "Cash Deposit";
			
		//customer's Transaction Description
        $Transac_description = "Cash Deposit/".$transaction_id;
		
		date_default_timezone_set('Asia/Kolkata'); 
		$date_time = date("d/m/y h:i:s A");

		
        // Set autocommit to off
        $conn->autocommit(FALSE);
	
	//Add amount to customer's available balance	
	$sql1 = "Update bank_customers SET Current_Balance = '$customer_netbal' WHERE bank_customers.Customer_Name = 'customer_name;'";
		
	// Insert Statement into customer Passbook
	$sql2 = "INSERT INTO $customer_passbk (Transaction_id,Transaction_date,Description,Cr_amount,Dr_amount,Net_Balance,Remark)
	VALUES ('$transaction_id','$transaction_date','$Transac_description','$credit_amount','0','$customer_netbal','$remark')";
	if($conn->query($sql1) == TRUE && $conn->query($sql2) == TRUE ){
			$conn->commit();
			echo '<script>alert(" '. $credit_amount .' Amount sent successfully to customer ' . $customer_name . ' account")</script>';
							
		}	

		else{	
			echo '<script>alert("Transaction failed\n\nReason:\n\n'.$conn->error.'")</script>';
			$conn->rollback();	
        }
    }

    else{

        echo '<script>alert("Incorrect Account Number")</script>';
    }

	}
			
	}
	
?>
