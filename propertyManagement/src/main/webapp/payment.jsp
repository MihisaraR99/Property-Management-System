<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
 <link rel="stylesheet" href="payment.css" type="text/css">
</head>
<body>
<center>
	<form method="post" action="paymentServlet">

	<div class="checkout-panel">
    <div class="panel-body">
      <h2 class="title">Pay By Card</h2>

     <hr>

      <div class="payment-method">
        <label for="card" class="method card">
          <div class="card-logos">
            <img src="images/visa_logo.png"/>
            <img src="images/mastercard_logo.png"/>
          </div>

          <div class="radio-input">
            <input id="card" type="radio" name="method" value="Pay with Credit Card">
            Pay with Credit Card
          </div>
        </label>

        <label for="paypal" class="method paypal">
          <img src="images/paypal_logo.png"/>
          <div class="radio-input">
           
            <a href="https://www.paypal.com/">
               <input id="paypal" type="radio" name="method" value="Pay with PayPal" >
            Pay with PayPal
          </a>
          </div>
        </label>
      </div>

      <div class="input-fields">
        <div class="column-1">
          <label for="cardholder">Cardholder's Name</label>
          <input type="text" id="cardholder1" name="cardholder" />

          <div class="small-inputs">
            <div>
              <label for="date">Valid thru</label>
              <input type="text" id="date" placeholder="MM / YY" name="validthru" />
            </div>

            <div>
              <label for="verification">CVV / CVC *</label>
              <input type="text" id="verification" name="cvv">
            </div>
          </div>

        </div>
        <div class="column-2">
          <label for="cardnumber">Card Number</label>
          <input type="text" id="cardnumber" name="cardno"/>

          <span class="info">* CVV or CVC is the card security code, unique three digits number on the back of your card separate from its number.</span>
        </div>
      </div>
    </div>

    <div class="panel-footer">
      <button class="btn back-btn">Back</button>


      <button  type="submit" onclick="return valid()" class="btn next-btn" id="Submit" name="btnSubmit" value="pay">PAY</button>
       
    </div>
    
  </div>  

  <script>
    
    //input validation
    function valid(){
    	
    	var f= document.getElementById("cardholder1").value;
    	
    	
    	if(f==""){
    	alert("Cardholder name is empty");
    	return false;
	
    }
    	var p=document.getElementById("cardnumber").value;
    	if(p.length !=16){
    	
    	alert("Card Number is Invalid");
    	return false;
    	}
    	var p=document.getElementById("cardnumber").value;
    	if(isNaN(p)){
    		
    		alert("Enter the valid card number");
    		return false;
    		}
    	

    	var par=document.getElementById("verification").value;
    	
    	if(par.length !=3){
    		alert("CVV is should not valid");
    		return false;
    		}

    	var par=document.getElementById("verification").value;
    	   	
    }
    
    
    </script>
    
    
</form>
</center>
<hr>


</body>
</html>