<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>user Registration</title>
    <link rel="stylesheet" href="styles/style.css">
   <style>
   body{
   background-color:  #e6ffff
;
   }
   </style>
 
</head>
<body>
        <div class="header">


                STOCK MARKET CHARTING  <img src="images/logo.png" id="logo">
            
            </div>

 
<h3 class="addcompany-heading">User Registration</h3>
<div class="user-register">
    <form:form method="POST" action="/addUser" modelAttribute="user">
        <table cellspacing="20" width="40%">
            <tr>
             <td ><label for="user_name">User Name</label></td>
            
             <td ><form:input type="text" id="user_name" name="user_name" path="username"   size="50" required/></td>
            </tr>
            <tr>
                    <td ><label for="user_id">ID</label></td>
                   
                    <td ><form:input type="text" id="user_id" name="user_id" path="id" size="50" required/></td>
                   </tr>
            <tr>
            <td ><label for="password">Password</label></td>
            <td><form:input type="text" name="password" id="password" path="password" size="50" required/></td>
           </tr>
           <tr>
            <td ><labe for="userType">User Type</labe></td>
            <td><form:select path="userType" >
                 <form:option value="">Select UserType</form:option>
                        <form:options items="${userType}" />
                </form:select>

            </td>
           </tr>
          
          <tr>
                <td ><labe for="email">Email</labe></td>
                <td><form:input type="text" name="email" id="email" path="email" size="50" required/></td>
               
              </tr>
        </table>
  
</div>
<div class="user_register-button">
        <input type="submit" value="save" name="ok" width="30px" class="buttonconfirm">
        </div>  
    </div>
      </form:form>
    
    
</body>
</html>
