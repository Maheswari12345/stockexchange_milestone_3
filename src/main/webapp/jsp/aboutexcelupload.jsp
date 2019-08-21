<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>About Excel Upload</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
        <div class="header">
                STOCK MARKET CHARTING  <img src="images/logo.png" id="logo">
            
            </div>
            <nav>
                    <ul>
                            <button class="button4"><a href="adminlanding.html" class="about">Home</a></button>
                    </ul>
                </nav>
            <div class="containerexcel">
                <h1 class="about-h1">IMPORT EXCEL</h1>
                <article>
                        <p>a.	Data can be imported(in Excel format), it's basically to feed stock price of a company at various points of time. </p>
                        <p>b.	Uploaded Excel need to be in a specific format, if not error message need to be displayed. While uploading Excel, specify the Stock Exchange to which the uploaded data belong to. If such company exists.</p>
                        <p>c.	The company code, date ranges need to be appropriately checked, if any data will be over written.</p>
                        <p>d.	After successfully imported, data need to get stored in a database and Uploaded Summary need to be displayed like which company, Stock Exchange, how many records imported, from and to date range, etc</p>
                </article>  
                
            </div>


    
</body>
</html>