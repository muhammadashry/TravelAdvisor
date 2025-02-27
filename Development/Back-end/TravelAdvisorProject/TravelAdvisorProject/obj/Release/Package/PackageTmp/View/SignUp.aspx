﻿<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="SignUp.aspx.cs" Inherits="TravelAdvisorProject.View.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Registration Form</title>
<link rel="icon" href="../Images/download.jpg"/>
<link rel="stylesheet" href="signup_form.css"/>
 <link rel= "stylesheet" href= "nstyle.css"/>

</head>


<body>
    <form id="form1" runat="server">

      <nav>
   <div class="logo">
     <img src="../Images/u.png" class="img-fluid"/>
   </div>
 
 
 </nav>

  <div  class="container">
<form >

    <h1>Sign Up</h1>
    <hr/>
    <label for="userName"><b>Username</b></label>
    <asp:TextBox ID="user_name"  placeholder="Enter userName" runat="server" pattern="^[0-9]*[a-zA-Z]+[0-9]*$" minlength="4" title="Please Enter correct format" required></asp:TextBox>

    <label for="email"><b>Email</b></label>
    <asp:TextBox ID="user_email" type="email"   placeholder="Enter Email" runat="server" pattern="^([a-zA-Z0-9\.]+)@([a-zA-Z0-9\.]+)\.([a-zA-Z]{2,5})$" title="email doesn't apply to the required format" required="required"></asp:TextBox>
	
    
   

    <label for="password"><b>Password</b></label>
        <asp:TextBox ID="user_password" type="password"   placeholder="Enter Password" runat="server" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="required"></asp:TextBox>

 
 	<label for="confirmPassword"><b>Confirm Password</b></label>
    <asp:TextBox ID="user_confirm_password" type="password"   placeholder="Enter Password" runat="server" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="required"></asp:TextBox>
    <asp:Label ID="checkPassword" runat="server" Text=""></asp:Label>   <br/>
	<label for="phone"><b>Mobile Number</b></label>
	    <asp:TextBox ID="user_mobile" type="text"   placeholder="Enter phone" runat="server" pattern="^(010|011|012)[0-9]{8}$" title="a phone can't have characters" required></asp:TextBox>

	<label for="age"><b>Age</b></label>
    <asp:TextBox ID="user_age" type="text"   placeholder="Enter Age" runat="server" pattern="^(1[89]|[2-8][0-9]|90)$" required></asp:TextBox>

    
    <button type="reset" class="resetbtn">Reset</button>

    <asp:Button ID="signUp" runat="server" class="signupbtn" Text="Sign Up" OnClick="signUp_Click" />


</form>
  </div>
    </form>
</body>
</html>
