<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="styles/style.css">
  <style>
  body{
  background-color:  #e6f9ff;
  }
  </style>
</head>
<body>
 <div class="header">


                STOCK MARKET CHARTING  <img src="images/logo.png" id="logo">
            
</div>
<nav>
<form>
<ul class="register-ul"><input type="submit" value="Register" width="30px" class="buttonconfirm"></ul>

</form>
</nav>
<div class="login-container">
<h3 class="addcompany-heading">LOGIN</h3>
<form >
<table cellspacing="30" width="60px" class="login-table">
<tr>
<td>ID</td>
<td><input type="text" name="id" path="id"></td>


</tr>
<tr>
<td>PASSWORD</td>
<td><input type="text" name="password" path="password"></td>


</tr>

</table>


<div class="user_register-button">
        <input type="submit" value="LOGIN" name="ok" width="30px" class="buttonconfirm">
        </div> 
</form>

</div>

</body>
</html>
