<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="houseproperty.css"> 
<meta charset="ISO-8859-1">
<title> Add House Property</title>
</head>
<body>

<div class="form">
      <div class="title">Welcome !!</div>
      <div class="subtitle">ADD HOUSE</div>
      
      <form action="houseServlet" method="post" enctype="multipart/form-data">
      
     
      <div class="icontainer i2">
        <input id="housesize1" name="housesize"class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="housesize" class="placeholder">House Size(sq.root)</label>
      </div>
      <div class="icontainer i2">
        <input id="landsize1" name="landsize" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="landsize" class="placeholder">Land Size(Acres/Purchus)</>
      </div>
         <div class="icontainer i2">
        <input id="bedrooms1" name="bedrooms" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="bedrooms" class="placeholder">Bedrooms</>
      </div>
       
       <div class="icontainer i2">
        <input id="bathrooms1" name="bathrooms" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="bathrooms" class="placeholder">Bathrooms</>
      </div>
      
      <div class="icontainer i2">
        <input id="location1" name="location" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="location" class="placeholder">Location</>
      </div>
      
      <div class="icontainer i2">
        <input id="address1" name="address" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="address" class="placeholder">Address</>
      </div>
      
      <div class="icontainer i2">
        <input id="description1" name="description" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="description" class="placeholder">Description</>
      </div>
      
      <div class="icontainer i2">
        <input id="price1" name="price" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">Price(LKR)</>
      </div>
      
       <div class="icontainer i2">
        <input id="phone1" name="phone" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="phone" class="placeholder">Owner's Name and Phone No(Mr/Ms)</>
      </div>
      
      
       <div class="icontainer i2">
      <label class="upload" style="color:white;">Upload Images</label><br><br>
         <input type="file" name="image" id="img"  placeholder=" " /> 
        <div class="cut cut-short"></div>
      </div>

        <div class="icontainer i2">
        <div class="cut cut-short"></div>
        
           <button type="submit" onclick="return valid()"class="submit">Add Property</button>
           
      </div>
       
       <script>
    
    //input validation
    function valid(){
    	
    	var f= document.getElementById("housesize1").value;
    	var l= document.getElementById("landsize1").value
    	
    	
    	
    	if(f==""|| l==""){
    	alert("Fields are Empty");
    	return false;
	
    }
    	
    }
    
    
    </script>
    
    
       
      </form>
    </div>

</body>
</html>