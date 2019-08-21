<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Upload Excel Admin</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
        <div class="header">


                STOCK MARKET CHARTING  <img src="images/logo.png" id="logo">
            
            </div>
        <ul class="ul"> 
                <li class="li"><a href="uploadexceladmin.html" class="hyperlink">Import Data</a></li>
                <li class="li"><a href="managecompanies.html" class="hyperlink">Manage Company</a></li>
                <li class="li"><a href="https://www.google.com" class="hyperlink">ManageExchange</a></li>
                <li class="li"><a href="https://www.google.com" class="hyperlink">Update IPO Details</a></li>
                <li class="floatright-list"><a href="https://www.google.com" class="hyperlink">Logout</a></li>
        </ul>    
</div>
<div class="container" style="margin-top:0px;">
<h3 class="import">UPLOAD</h3>
<br>

<div class="excelupload">
    <form>
        <table>
            <tr> 
                <td ><label for="Select Excel file to be uploaded"></label>Select Excel file to be uploaded</td>
                <!--<td><input type="text" name="Select Excel file to be uploaded"></td>-->
                <td ><input type="file" name="Upload" value="Upload"></td>
            </tr>
        </table>
    </form> 
</div>
<div class="downloadsample">
<a href="#" class="a">Click here to download sample excel file</a>
</div>
</div>

    
</body>
</html>