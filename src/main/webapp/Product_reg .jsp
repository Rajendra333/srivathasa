<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product registration</title>
<script type="text/javascript">
function updateTextField()
{
    var select = document.getElementById("product_id");
    var option = select.options[select.selectedIndex];
    if (option.value == "11")
    {
	document.getElementById("product_type").value = "pp cover";
	document.getElementById("product_name").value = "per 1kg";
	document.getElementById("amount").value = "160";
    }
	else if(option.value=="12")
{
	document.getElementById("product_type").value = "pp cover";
	document.getElementById("product_name").value = "plain pp cover";
	document.getElementById("amount").value = "155";
}
else if(option.value=="13")
{
	document.getElementById("product_type").value = "paper cups";
	document.getElementById("product_name").value = "50mm box 80 pkts ";
	document.getElementById("amount").value = "2800";
}
else if(option.value=="14")
{
	document.getElementById("product_type").value = "paper cups ";
	document.getElementById("product_name").value = "60mm box 80 pkts";
	document.getElementById("amount").value = "2500";
}
else if(option.value=="15")
{
	document.getElementById("product_type").value = "paper cup machine";
	document.getElementById("product_name").value = "speed machine 80/hr";
	document.getElementById("amount").value = "650000";
}
else if(option.value=="16")
{
	document.getElementById("product_type").value = "paper cup machine";
	document.getElementById("product_name").value = "speed machine 60/hr";
	document.getElementById("amount").value = "550000";
}

}
function notnul(a,b){
	
	if(b==""){
		
			alert("this field cannot be left blank");
			document.myform.userid1.value="";
		}
	
	}
	
function productid(a,b)
{
 var exp=/^[0-9]{2}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("productid must contain 2 digits");
  document.myform.productid.value="";
  }
 }
}

function producttype(a,b)
{
 var exp=/^[A-Za-z]{3,20}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("enter valid producttype");
  document.myform.producttype.value="";
  }
 }
}


function productname(a,b)
{
 var exp=/^[A-Za-z]{3,20}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("enter valid productname");
  document.myform.producttype.value="";
  }
 }
}

function date1(a,b){
	var exp= /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("Enter a valid date ");
			document.product-reg.reg_date.value=="";
		}
		else{
			var curr_date=new Date();
			 //document.myform.appointmentDate.focus();
			//product which seperator is used '/' or '-'  
			  var opera1 = b.split('/'); 	
			  var opera2 = b.split('-'); 
			  //alert(opera2)
			  lopera1 = opera1.length;  
			  lopera2 = opera2.length;  
			  // Extract the string into month, date and year  
			  if (lopera1>1)  
			  {  
			  var pdate = b.split('/');  
			  }  
			  else if (lopera2>1)  
			  {
			  var pdate = b.split('-');  
			  }  
			  var dd = parseInt(pdate[0]);  
			  var mm  = parseInt(pdate[1]);  
			  var yy = parseInt(pdate[2]);

			  if(yy>=curr_date.getFullYear() && mm>=(curr_date.getMonth()+1) && dd>=curr_date.getDate

()){
				   
				  //alert("Valid Date");
				// Create list of days of a month [assume there is no leap year by default]
				  var ListofDays = [31,28,31,30,31,30,31,31,30,31,30,31];  
				  if (mm==1 || mm>2)  
				  {  
				  	if (dd>ListofDays[mm-1])  
				  	{  
				  		alert('Invalid date format!');  
				  		return false;  
				 	 }  
				  }  
				  if (mm==2)  
				  {  
				  	var lyear = false;  
				  	if ( (!(yy % 4) && yy % 100) || !(yy % 400))   
				  	{  
				  		lyear = true;  
				  	}  
				 	 if ((lyear==false) && (dd>=29))  
				  	{  
				  		alert('Invalid date format!');  
				  		return false;  
				  	}  
				  	if ((lyear==true) && (dd>29))  
				  	{  
				  		alert('Invalid date format!');  
				  		return false;  
				  	}    
				} 
			  }else{
				  alert("Invalid Date:")
				 
		}
	}
}
}
function date2(a,b){
	var exp= /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("Enter a valid date ");
			document.product-reg.product_date.value=="";
		}
		else{
			var curr_date=new Date();
			 //document.myform.appointmentDate.focus();
			//product which seperator is used '/' or '-'  
			  var opera1 = b.split('/'); 	
			  var opera2 = b.split('-'); 
			  //alert(opera2)
			  lopera1 = opera1.length;  
			  lopera2 = opera2.length;  
			  // Extract the string into month, date and year  
			  if (lopera1>1)  
			  {  
			  var pdate = b.split('/');  
			  }  
			  else if (lopera2>1)  
			  {
			  var pdate = b.split('-');  
			  }  
			  var dd = parseInt(pdate[0]);  
			  var mm  = parseInt(pdate[1]);  
			  var yy = parseInt(pdate[2]);

			  if(yy>=curr_date.getFullYear() && mm>=(curr_date.getMonth()+1) && dd>=curr_date.getDate

()){
				   
				  //alert("Valid Date");
				// Create list of days of a month [assume there is no leap year by default]
				  var ListofDays = [31,28,31,30,31,30,31,31,30,31,30,31];  
				  if (mm==1 || mm>2)  
				  {  
				  	if (dd>ListofDays[mm-1])  
				  	{  
				  		alert('Invalid date format!');  
				  		return false;  
				 	 }  
				  }  
				  if (mm==2)  
				  {  
				  	var lyear = false;  
				  	if ( (!(yy % 4) && yy % 100) || !(yy % 400))   
				  	{  
				  		lyear = true;  
				  	}  
				 	 if ((lyear==false) && (dd>=29))  
				  	{  
				  		alert('Invalid date format!');  
				  		return false;  
				  	}  
				  	if ((lyear==true) && (dd>29))  
				  	{  
				  		alert('Invalid date format!');  
				  		return false;  
				  	}    
				} 
			  }else{
				  alert("Invalid Date:")
				 
		}
	}
}
}

		

	
function amount1(a,b)
{
 var exp=/^[0-9]{3,4}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("amount must be 3 or 4 digit ");
  document.product-reg.amount.value == "";
  }
 }
}
function validateform() {
	

	if (document.forms["product-reg"]["product_id"].value == null
			||document.forms["product-reg"]["product_id"].value == "") 
{
		alert("product id should not be null");
		document.getElementById("product_id").focus();
 
		return false;
	}
if (document.forms["product-reg"]["product_type"].value == null
			||document.forms["product-reg"]["product_type"].value == "") 
	{
		alert("product type should not be null");
		document.getElementById("product_type").focus();
 
		return false;
	}
if (document.forms["product-reg"]["product_name"].value == null
			||document.forms["product-reg"]["product_name"].value == "") 
	{
		alert("product nameshould not be null");
		document.getElementById("product_name").focus();
 
		return false;
	}
if (document.forms["product-reg"]["reg_date"].value == null
			||document.forms["product-reg"]["reg_date"].value == "") 
	{
		alert("registration date should not be null");
		document.getElementById("reg_date").focus();
 
		return false;
	}
if (document.forms["product-reg"]["product_date"].value == null
			||document.forms["product-reg"]["product_date"].value == "") 
	{
		alert("product date should not be null");
		document.getElementById("product_date").focus();
 
		return false;
	}




if (document.forms["product-reg"]["amount"].value == null
			||document.forms["product-reg"]["amount"].value == "") 
	{
		alert("amount should not be null");
		document.getElementById("amount").focus();
 
		return false;
	}




	return true;
}

</script>
</head>
<CENTER><H1><font color="navy">product Registration</font></H1> </CENTER>
<hr>
<body BGCOLOR="WHEAT">


<form name="product-reg" method="post" action="productRegController" onsubmit="return validateform()">

<table>
<tr>
<td>
product Id:
</td>
<td>
<!--<input type="text" name="product_id"  onblur="productid(this.id,this.value)">-->
<select name="product_id" id="product_id" onchange="updateTextField()"> 
  <option value="" selected >product Id</option> 
  <option value="11">11</option> 
  <option value="12">12</option> 
  <option value="13">13</option> 
  <option value="14">14</option> 
  <option value="15">15</option> 
  <option value="16">16</option>
  <option value="21">21</option> 
  </select>
</td>
</tr>
<tr>
<td>
product Type:
</td>
<td>
<input type="text" name="product_type" id="product_type" onblur="producttype(this.id,this.value)">
</td>
</tr>
<tr>
<td>
product Name:
</td>
<td>
<input type="text" name="product_name" id="product_name" onblur="productname(this.id,this.value)" >
</td>
</tr>
<tr>
<td>
Registration Date:
</td>
<td>
<input type="text" name="reg_date"   onblur="date1(this.id,this.value)" >dd-mon-yyyy
</td>
</tr>

<tr>
<td>
product Date:
</td>
<td>
<input type="text" name="product_date"   onblur="date2(this.id,this.value)" >dd-mon-yyyy
</td>
</tr>

<tr>
<td>
Amount:
</td>
<td>
<input type="text" name="amount" id="amount" onblur="amount1(this.id,this.value)">
</td>
</tr>
<tr>
<td>
<input type="submit" name="button" value="Submit" onfocus="validateform()">
</td>
<td>
<input type ="reset" name="button" value="Reset">
</td>
</tr>
</table></form>

</body>
</html>