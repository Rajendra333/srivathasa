<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer registration</title>
<style>
pre {
	text-align: right;
}
img
{
float:right;
}
</style>
<script type="text/javascript">
function notnul(a,b){
	
	if(b==""){
		
			alert("this field cannot be left blank");
			document.myform.userid1.value="";
		}
	if(document.myform.userid1.value="")
		alert("this field cannot be left blank");
	}
function password1(a,b){
	var exp=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{4,15}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("enter a valid password");
			document.myform.fname.value="";
		}
	}
	
}


function GST1(a,b){
	var exp=/^[0-9]{1,2}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("enter a valid GST");
			document.myform.GST1.value="";
		}
	}
	
}
function mobile1(a,b)
{
 var exp=/^[0-9]{10}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("Phone number must contain 10 numbers");
  document.myform.mobile.value="";
  }
 }
}

function customerid(a,b)
{
 var exp=/^[0-9]{4}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("customerid must contain 4 digits");
  document.myform.customerid.value="";
  }
 }
}


function customername(a,b)
{
 var exp=/^[A-Za-z]{3,20}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("enter valid customername");
  document.myform.customername.value="";
  }
 }
}


	
function validateform() {
	

	if (document.forms["pat_reg"]["customer_id"].value == null
			||document.forms["pat_reg"]["customer_id"].value == "") 
	{
		alert("customer_id should not be null");
		document.getElementById("customer_id").focus();
 
		return false;
	}
if (document.forms["pat_reg"]["customer_name"].value == null
			||document.forms["pat_reg"]["customer_name"].value == "") 
	{
		alert("customer_name should not be null");
		document.getElementById("customer_name").focus();
 
		return false;
	}
if (document.forms["pat_reg"]["password"].value == null
			||document.forms["pat_reg"]["password"].value == "") 
	{
		alert("password should not be null");
		document.getElementById("password").focus();
 
		return false;
	}
if (document.forms["pat_reg"]["GST"].value == null
			||document.forms["pat_reg"]["GST"].value == "") 
	{
		alert("GST should not be null");
		document.getElementById("GST").focus();
 
		return false;
	}

if (document.forms["pat_reg"]["phoneno"].value == null
			||document.forms["pat_reg"]["phoneno"].value == "") 
	{
		alert("phoneno should not be null");
		document.getElementById("phoneno").focus();
 
		return false;
	}


	return true;
}
</script>
</head>
<center><h1><font color="navy"> Registration Form</font></h1>
</center><hr>
<body bgcolor="wheat">
<form name="pat_reg" method="get" action="PatientRegController" onsubmit="return validateform()">
<table>
<tr>
<td>
CustomerID:
</td>
<td>
<input type ="text" name="customer_id" onblur="customerid(this.id,this.value)" >
</td>
</tr>
<tr>
<td>
Customer Name:
</td>
<td>
<input type ="text" name="customer_name" onblur="customername(this.id,this.value)">
</td>
</tr>
<tr>
<td>
Password:
</td>
<td>
<input type ="password" name="password" onblur="password1(this.id,this.value)">
</td>
</tr>

<tr>
<td>
GST NUMBER:
</td>
<td>
<input type ="text" name="GST" onblur="GST1(this.id,this.value)">
</td>
</tr>
<tr>
<td>

Customer Gender:
</td>
<td>
<input type ="radio" name="gender" value="M" onblur="notnul(this.id,this.value)">Male
<input type="radio" name="gender" value="F" onblur="notnul(this.id,this.value)" checked="checked">female
</td>
</tr>
<tr>
<td>

Phone no:
</td>
<td>
<input type="text" name="phoneno"  onblur="mobile1(this.id,this.value)">
</td>
</tr>

<tr>
<td>
<input type="submit" name="button" value="Submit" onfocus="validateform()">
</td>
</tr>
</body>
</html>