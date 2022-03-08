<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String url ="jdbc:mysql://localhost:3306/propertymanagement";
String username= "root";
String password= "7812833";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%> 
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="house.css">
<title>House Property-Admin</title>
</head>

<style>

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
body{
background-color:#ddd3eb;

}
</style>

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
<h1>House</h1>
<table class="styled-table">
<thead>
<tr>

<th>Property ID</th>
<th>House Size</th>
<th>Land Size</th>
<th>Bedrooms</th>
<th>Bathrooms</th>
<th>Location</th>
<th>Address</th>
<th>Description</th>
<th>Price</th>
<th>Phone</th>
<th>Filepath</th>
<th>Delete</th>
<th>Update</th>


</tr>
</thead>
 <%
try{
	connection = DriverManager.getConnection(url, username, password);
	statement=connection.createStatement();
	String sql ="select * from houseproperty";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){

%>
 <tbody>
<tr>
<td><%=resultSet.getString("idhouseproperty") %></td>
<td><%=resultSet.getString("housesize") %></td>
<td><%=resultSet.getString("landsize") %></td>
<td><%=resultSet.getString("bedrooms") %></td>
<td><%=resultSet.getString("bathrooms") %></td>
<td><%=resultSet.getString("location") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("filepath") %></td>


<c:url value="deleteproperty.jsp" var="deletehouse">
		<c:param name="idhouseproperty" value='<%=resultSet.getString("idhouseproperty") %>'/>
		<c:param name="housesize" value='<%=resultSet.getString("housesize")%>'/>
		<c:param name="landsize" value='<%=resultSet.getString("landsize") %>'/>
		<c:param name="bedrooms" value='<%=resultSet.getString("bedrooms") %>'/>
		<c:param name="bathrooms" value='<%=resultSet.getString("bathrooms") %>'/>
		<c:param name="location" value='<%=resultSet.getString("location") %>'/>
		<c:param name="address" value='<%=resultSet.getString("address") %>'/>
		<c:param name="description" value='<%=resultSet.getString("description") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
		<c:param name="phone" value='<%=resultSet.getString("phone") %>'/>
		<c:param name="image" value='<%=resultSet.getString("filepath") %>'/>
	</c:url>
<td><a href="${deletehouse}">
	<input type="button" name="delete" value="Delete Data">
	</a>
</td>
 <c:url value="updatehouseproperty.jsp" var="houseupdate">
		<c:param name="idhouseproperty" value='<%=resultSet.getString("idhouseproperty") %>'/>
		
		<c:param name="housesize" value='<%=resultSet.getString("housesize") %>'/>
		<c:param name="landsize" value='<%=resultSet.getString("landsize") %>'/>
		<c:param name="bedrooms" value='<%=resultSet.getString("bedrooms") %>'/>
		<c:param name="bathrooms" value='<%=resultSet.getString("bathrooms") %>'/>
		<c:param name="location" value='<%=resultSet.getString("location") %>'/>
		<c:param name="address" value='<%=resultSet.getString("address") %>'/>
		<c:param name="description" value='<%=resultSet.getString("description") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
		<c:param name="phone" value='<%=resultSet.getString("phone") %>'/>
		<c:param name="image" value='<%=resultSet.getString("filepath") %>'/>
	</c:url>	
<td><a href="${houseupdate}">
	<input type="button" name="update" value="Update Data">
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