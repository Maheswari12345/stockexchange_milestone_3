<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Comparison Charts</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
        <div class="header">


                STOCK MARKET CHARTING  <img src="images/logo.png" id="logo">
            
            </div>

        <ul class="ul"> 
                <li class="li"><a href="https://www.google.com" class="hyperlink">IPO s</a></li>
                <li class="li"><a href="https://www.google.com" class="hyperlink">Compare Company</a></li>
                <li class="li"><a href="https://www.google.com" class="hyperlink">Compare Sectors</a></li>
                <li class="li"><a href="https://www.google.com" class="hyperlink">Others</a></li>
                <li class="floatright-list"><a href="https://www.google.com" class="hyperlink">Logout</a></li>
        </ul>
        

<div class="container-comparison">
<div class="compare">
        <form>
                <table cellspacing="30px" width="60%">
                    <tr>
                     <td >Select Comapany/Sector</td>
                    
                     <td >
                     <select>
                         <option value="Company">Comapany</option>
                         <option value="Sector">Sector</option>

                     </select>
                    </td>
                    </tr>
                    <tr>
                        <td >Select Stock Exchange</td>
                           
                            <td >
                            <select>
                                <option value="BSE">BSE</option>
                                <option value="NSE">NSE</option>
       
                            </select>
                           </td>
                    </tr>
                   
                   <tr>
                    <td ><label for="company_name"></label>Company_Name</td>
                    <td><input type="text" name="company_name" id="company_name"></td>
                   </tr>
                   <tr>
                   <td >From Period</td>
                   <td ><p></p></td>
                   <td >To Period</td>
                   <td ><p></p></td>
                </tr>
                <tr>
                    <td>Specific Periodicity</td>
                    <td><p></p></td>
                </tr>
                </table>
            </form>

</div>
<div class="generatemap-button">
        <input type="button" value="Generate Map" name="Generate Map" width="30px" class="buttonconfirm">
</div>
</div>
    
</body>
</html>