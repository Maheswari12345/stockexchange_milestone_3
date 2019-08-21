<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Index Page</title>
</head>
<style>
    .header{
    background-color: #0044cc;
    width:100%;
    font-size: 50px;
    text-align: center;
    margin-left:0px;
    padding:0px;
    height:100px;
    padding-top:10px;
    padding-left:0px;
    margin-top:0px;
    color:#ffff99;
    
    
    
}
#logo{
    padding-right:0px;
    display:inline-block;
    height:50px;
    width:50px;
}
.image{
    height:250px;
}
* {
  box-sizing: border-box;
}

body {
  background-color: #cccccc;

  padding: 20px;
  font-family: Arial;
}

/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}

h1 {
  font-size: 50px;
  word-break: break-all;
}

.row {
  margin: 10px -16px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
  padding: 8px;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 23.33%;
  display: none; /* Hide all elements by default */
}

/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: white;
 
  padding: 10px;
}


.show {
  display: block;
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}
.white{
    padding-top:20px;
}
</style>

<body>
    <header>
        <div class="header">


                STOCK MARKET CHARTING  <img src="images/logo.png" id="logo">
            
        </div>
    </header>
       
<div class="white">
<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('admin')"> Admin</button>
  <button class="btn" onclick="filterSelection('user')"> User</button>
  <button class="btn" style="float: right;">LOGIN</button>

</div>

<div class="row">
  <div class="column user">
    <div class="content">
      <img src="Images/ipo.jpg" alt="Mountains" style="width:100%" class="image">
      <h4>IPO</h4>
     
    </div>
  </div>
  <div class="column admin">
    <div class="content">
    <img src="Images/managecompany.png" alt="Lights" style="width:100%" class="image">
     <h4>MANAGE COMPANIES</h4>
    </div>
  </div>
  <div class="column user">
    <div class="content">
    <img src="Images/compare_sector.jfif" alt="Nature" style="width:100%" class="image">
     <h4>COMPARE SECTORS</h4>
    </div>
  </div>
  
  <div class="column admin">
    <div class="content">
      <img src="Images/excel.jfif" alt="Car" style="width:100%" class="image">
     <h4>UPLOAD EXCEL</h4>
    </div>
  </div>
  <div class="column admin">
    <div class="content">
    <img src="Images/stockmanage.jfif" alt="Car" style="width:100%" class="image">
    <h4>MANAGE STOCK</h4>
    </div>
  </div>
  <div class="column admin">
        <div class="content">
                <img src="Images/compare_companies.jpg" alt="Car" style="width:100%" class="image">
              <h4>COMPARE COMPANIES</h4>  
                </div>
  </div>
</div>
 

  
  
 
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>

<script>
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}


// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>
    
</body>
</html>