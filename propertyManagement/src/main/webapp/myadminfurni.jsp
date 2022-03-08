<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String url ="jdbc:mysql://localhost:3306/propertymanagement";
String dbuser = "root";
String Password= "SLIIT123#";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%> 

    
 

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="myadmin.css">
<style>
body{
background-color:#ddd3eb;

}
.wrapper {
	width: 1170px;
	margin: 0 auto;
}

.logo {
	width: 0%;
	float: left;
	line-height: 175px;
	margin-right: 150px;
}
nav {
	float: right;
	line-height: 100px;


}
nav a {
	text-decoration: none;
	font-family: poppins;
	letter-spacing: 4px;
	font-size: 20px;
	margin: 0 10px;
	color: #fff;
	display: inline-block;


}

header {
	height: 150px;
	background: #303245;
	width: 100%;
	z-index: 10;
	position: fixed;
	border-style: groove #fff;
	

}
.footer{
	margin-left: 30px;
}
.footer a h2{
	color: #fff;
	font-size: 15px;
	
}
.footer a {
	text-decoration: none;
}
.foot-hr{
	color: #fff;
	border: 3px solid #fff;
	margin-top: 20px;
}
.payments-store{
	margin-left: 30px;
}
#youtube{
	margin-left: 820px;
}
#master{
	margin-left: 30px;
}
#play{
	margin-left: 30px;
}
#tweet{
	margin-left: 30px;
}
#facebook{
	margin-left: 30px;
}
#insta{
	margin-left: 30px;
}
#user{
	margin-left: 950px;
}
nav a:hover{
   color: red;
}
#user:hover{
	cursor: pointer;
	width: 35px;
}

</style>
</head>
<body>

<header>
			<div class="wrapper">
				<div class="logo">
					<img src="image
					s/logo.jpg" width="250px" >
				</div>
				<nav>
					<a href="home.jsp" class="navtab" style="font-family: sans-serif;">HOME</a>
					<a href="https://www.sliit.lk/" class="navtab" style="font-family: sans-serif;">CONTACT</a>
					<a href="https://ikman.lk/en/help/about#help-content" class="navtab" style="font-family: sans-serif;">ABOUT US</a>
					
				</nav>
				
				

             </a>
				<br>

			

			</div>
		</header>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>


<center>
<h1>FURNITURE</h1>

<table class="styled-table">
<thead>
<tr>

<th>Furniture Id</th>
<th>Display_name</th>
<th>Material</th>
<th>Contact</th>
<th>Price</th>
<th>Area</th>
<th>Address</th>
<th>delete</th>
<th>update</th>


</tr>
</thead>

 <tbody>
 

<tr>

<%
try{
	connection = DriverManager.getConnection(url, dbuser, Password);
	statement=connection.createStatement();
	String sql ="select * from furniture";
	resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<td><%=resultSet.getString("furniture_id") %></td>
<td><%=resultSet.getString("display_Name") %></td>
<td><%=resultSet.getString("material") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("area") %></td>
<td><%=resultSet.getString("address") %></td>
<c:url value="deletefurniture.jsp" var="furnituredelete">
		<c:param name="furniture_id" value='<%=resultSet.getString("furniture_id") %>'/>
		<c:param name="display_Name" value='<%=resultSet.getString("display_name") %>'/>
		<c:param name="material" value='<%=resultSet.getString("material") %>'/>
		<c:param name="contact" value='<%=resultSet.getString("contact") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
		<c:param name="area" value='<%=resultSet.getString("area") %>'/>
		<c:param name="address" value='<%=resultSet.getString("address") %>'/>

	</c:url>
<td><a href="${furnituredelete}">
	<input type="button" name="delete" value="delete My Data">
	</a>
</td>
 <c:url value="update.jsp" var="furnitureupdate">
	<c:param name="furniture_id" value='<%=resultSet.getString("furniture_id") %>'/>
		<c:param name="display_Name" value='<%=resultSet.getString("display_name") %>'/>
		<c:param name="material" value='<%=resultSet.getString("material") %>'/>
		<c:param name="contact" value='<%=resultSet.getString("contact") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
		<c:param name="area" value='<%=resultSet.getString("area") %>'/>
		<c:param name="address" value='<%=resultSet.getString("address") %>'/>
	</c:url>
	
<td><a href="${furnitureupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
</td>

</tr>
 </tbody>
 

	

 
 
 
 
 
 
 
 
 
 
 
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</center>
<div class="footer" style="background-color:#444d80; margin-left: 0px;">
			<img src="images/logo.jpg" width="100px">

         

			<a href="Home.html"><h2 style="font-family: sans-serif;">HOME</h2></a>
			<a href=""><h2 style="font-family: sans-serif;">CONTACT</h2></a>
			<a href="aboutus.html"><h2 style="font-family: sans-serif;">ABOUT US</h2></a>
			
			
		</div>
		<div class="payments-store">
			
			<a href=""><img src="images/credit-card.png" width="40px" id="credit"></a>
			<a href=""><img src="images/master-card.png" width="40px" id="master"></a>
            
             
            
			<a href="https://play.google.com/store/apps/details?id=com.maz.combo632&hl=en&gl=US"><img src="images/playstore.png" width="40px" id="play" class="social"></a>
			<a href="https://youtu.be/FXonIbSmTPw"><img src="images/youtube.png" width="40px" id="youtube" class="social"></a>
			<a href="www.twitter.com"><img src="images/twitter.png" width="40px" id="tweet" class="social"></a>
			<a href="www.facebook.com"><img src="images/facebook.png" width="40px" id="facebook" class="social"></a>
			<a href="www.instagram.com"><img src="images/instagram.png" width="40px" id="insta" class="social"></a>
	       
		</div>
</body>
</html>
