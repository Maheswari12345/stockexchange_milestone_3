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
<h3 class="addcompany-heading">Add StockExchange</h3>
  <form:form method="POST" action="/addStockExchange" modelAttribute="stockList">
        <table cellspacing="20" width="40%" align="center">
            <tr>
             <td ><label for="user_name">StockExchange Id</label></td>
            
             <td ><form:input type="text" id="stock_id" name="stockexchange_id" path="stockExchangeId" required/></td>
            </tr>
            
           
           <tr>
            <td ><label for="stock_name">StockExchange Name</label></td>
            <td><form:select path="stockExchangeName" >
                 <form:option value="">Select StockExchange</form:option>
                        <form:options items="${stockExchangeName}" />
                </form:select>

            </td>
           </tr>
           
            <tr>
            <td ><label for="brief">Brief Description</labe></td>
            <td><form:input type="text" name="brief" id="brief" path="brief" required/></td>
           
          </tr>
           <tr>
                <td ><labe for="address">Address</labe></td>
                <td><form:input type="text" name="address" id="address" path="address" required/></td>
               
              </tr>
              <tr>
                    <td ><labe for="remarks">Remarks</labe></td>
                    <td><form:input type="text" name="remarks" id="remarks" path="remarks" required/></td>
                   
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
