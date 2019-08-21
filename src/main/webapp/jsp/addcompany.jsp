<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html >
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>Add New company</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
        <div class="header">


                STOCK MARKET CHARTING  <img src="images/logo.png" id="logo">
            
            </div>
<div class="navbar">
        <ul class="ul"> 
                <li class="li"><a href="uploadexceladmin.html" class="hyperlink">Import Data</a></li>
                <li class="li"><a href="managecompanies.html" class="hyperlink">Manage Company</a></li>
                <li class="li"><a href="https://www.google.com" class="hyperlink">ManageExchange</a></li>
                <li class="li"><a href="https://www.google.com" class="hyperlink">Update IPO Details</a></li>
                <li class="floatright-list"><a href="https://www.google.com" class="hyperlink">Logout</a></li>
        </ul>
        
</div>
<div class="container-addcompany"> 
<h3 class="addcompany-heading">Add Company</h3>
<div class="addcompany">
    <form:form method="POST" action="/addCompany"
  modelAttribute="company">
        <table cellspacing="10px" width="60%">
            <tr>
                <tr>
             <td ><label for="company_id">Company Id</label></td>
            
             <td ><form:input type="text" id="company_id" name="company_id" path="companyCode" required/></td>
            </tr>
             <td ><label for="company_name">Company Name</label></td>
            
             <td ><form:input type="text" id="company_name" name="company_name" path="companyName" required/></td>
            </tr>
            
            <tr>
            <td ><label for="ceo">CEO & Board Of Directors</label></td>
            <td><form:input type="text" name="ceo" id="ceo" path="ceoName" required/></td>
           </tr>
           <tr>
            <td ><labe for="turnover">Turn Over</labe></td>
            <td><form:input type="text" name="turnover" id="turnover" path="turnOver" required/></td>
           </tr>
           <tr>
            <td ><labe for="brief">Brief Description</labe></td>
            <td><form:input type="text" name="brief" id="brief" path="briefWriteUp" required/></td>
           
          </tr>
         
        </table>
   
</div>
<div class="savebutton">
        <input type="submit" value="save" name="ok" width="30px" class="buttonconfirm">
        </div>  
    </div>
     </form:form>
    
    
</body>
</html>
