<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

@import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap");
* {
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  background: #272727;
  font-family: "Montserrat", sans-serif;
}

.navMenu {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

.navMenu a {
  color: #f6f4e6;
  text-decoration: none;
  font-size: 1.2em;
  text-transform: uppercase;
  font-weight: 500;
  display: inline-block;
  width: 80px;
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}

.navMenu a:hover {
  color: #fddb3a;
}

.navMenu .dot {
  width: 6px;
  height: 6px;
  background: #fddb3a;
  border-radius: 50%;
  opacity: 0;
  -webkit-transform: translateX(30px);
  transform: translateX(30px);
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}

.navMenu a:nth-child(1):hover ~ .dot {
  -webkit-transform: translateX(30px);
  transform: translateX(30px);
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  opacity: 1;
}

.navMenu a:nth-child(2):hover ~ .dot {
  -webkit-transform: translateX(110px);
  transform: translateX(110px);
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  opacity: 1;
}

.navMenu a:nth-child(3):hover ~ .dot {
  -webkit-transform: translateX(200px);
  transform: translateX(200px);
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  opacity: 1;
}

.navMenu a:nth-child(4):hover ~ .dot {
  -webkit-transform: translateX(285px);
  transform: translateX(285px);
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  opacity: 1;
}

.a1:link, .a1:visited {
  background-color: #3c424f;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

.a1:hover, .a1:active {
  background-color: #395596;
}


</style>
<meta charset="ISO-8859-1">
<title>Admin Interface</title>
</head>
<button class="a"><a href="home.jsp" target="_blank">Back to home</a></button>
<body>
<body>

    <nav class="navMenu" >
      <a href="Estatedis.jsp">Estate</a>
      <a href="house.jsp">House</a>
      <a href="myadminfurni.jsp">Furni</a>
      <a href="myadmin.jsp">Vehicle</a>
      <div class="dot"></div>
    </nav>
  </body>
</body>
</html>