<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #full{
           
            float:left;
            width:100%;
       
            overflow:hidden;
               background-image:url("sign.jpg");
 background-size:cover;
 background-repeat:no-repeat;
        }
.container
{
	position:relative;
	left:20%;
	width: 800px;
	background: black;
	padding: 30px;
	border :1px solid black;
	border-radius:40px;
	color:white;
	box-shadow: 4px 8px red;
    float:left;
   background-color:black;
 top:-5px;
 opacity:0.9;
}
.container h2
{
	text-align:center;
	margin:0 0 40px;
	letter-spacing:2px;
}
#masdivcph_TextBox2,#masdivcph_TextBox4,#masdivcph_TextBox5
{
	margin-bottom: 20px;
	width: 55%;
	box-shadow: none;
	outline: none;
	border:none;
	border-bottom: 2px solid #999;
    margin-left:20px;
    position:relative;
}
#masdivcph_TextBox3{
    margin-bottom: 20px;
	width: 55%;
	box-shadow: none;
	outline: none;
	border:none;
	border-bottom: 2px solid #999;
    margin-left:15px;
    position:relative;
}
#masdivcph_TextBox1{
    margin-bottom: 20px;
	width: 55%;
	box-shadow: none;
	outline: none;
	border:none;
	border-bottom: 2px solid #999;
    margin-left:10px;
    margin-top:5px;
    position:relative;
}
.container input[type="submit"]
{
	border-radius: 25px;
	font-size: 20px;
	height: 40px;
	width: 20%;
	cursor : pointer;
	background-color:black;
	color:white;
	position:relative;
	left:300px;
    top:20px;	
}
#Button1:hover{
	background-color:white;
	color:black;
}
#insect
{
	text-align:center;
	margin-bottom:10px;
}
#masdivcph_DropDownList1{
    text-align:center;
	margin-bottom:10px;
}

#i
{
	text-align:center;
}



        </style>
     <script>
  $(document).ready(function()
  {
	 
     $("input[type=text],input[type=password],input[type=email],#insect").focus(function(){
         $(this).css("background-color", "#ffcccc");
	 });
	 $("input[type=text],input[type=password],input[type=email],#insect").blur(function(){
	     $(this).css("background-color","gray");
	 });
	 
	 $(".fname").focusout(function(){
	      var fname=$(this).val();
		  var fname_l=$(this).val().length;
		 if(fname=="")
		 {
		     $("#fname").html("Please enter your first name");
			 $("#fname").show("slow");
		 }
		 else if(fname_l<=5)
			 {
			     $("#fname").html("Name must be grater then 5")
				 $("#fname").show("slow");
			 }
		 else
		 {
		     $("#fname").hide("slow");
		 }
	 });
	 
	 $(".lname").focusout(function(){
	     var lname=$(this).val();
		 if(lname=="")
		 {
		     $("#lname").html("Please enter last name");
			 $("#lname").show("slow");
		 }
		 else
		 {
		     $("#lname").hide("slow");
		 }
	 });
	 
	 $(".pass").focusout(function(){
	     var pass=$(".pass").val().length;
		 if(pass==0)
		 {
		     $("#pass").html("Please enter password");
			 $("#pass").show("slow");
		 }
		 else if(pass<8)
		 {
		     $("#pass").html("Should be 8 character");
			 $("#pass").show("slow");
		 }
		 else
		 {
		     $("#pass").hide("slow");
		 }
		 
	 });
	 
	 $(".repass").focusout(function(){
	     var pass=$(".pass").val();
	     var repass=$(".repass").val();
		 if(pass!=repass)
		 {
		     $("#repass").html("Password did not match")
			 $("#repass").show("slow");
		 }
		 else
		 {
		     $("#repass").hide("slow");
		 }
	 });
	  
	 $(".email").focusout(function(){
	     var email=$(".email").val();
		 if(email=="")
		 {
		     $("#email").html("Please enter email")
			 $("#email").show("slow");
		 }
		 else
		 {
		     $("#email").hide("slow");
		 }
	 });
	 
	 $("#form1").submit(function(){
	     var fname=$(".fname").val();
		 var lname=$(".lname").val();
		 var pass_length=$(".pass").val().length;
		 var pass=$(".pass").val();
		 var repass=$(".repass").val();
		 var email=$(".email").val();
		 if(fname=="")
		 {
		     if (fname == "") {
		         $("#fname").html("Please enter your first name");
		         $("#fname").show("slow");
		     }
		     else {
		         $("#fname").hide("slow");
		     }
		 }
		 else if (lname = "")
		 {
		     if (lname == "") {
		         $("#lname").html("Please enter last name");
		         $("#lname").show("slow");
		     }
		     else {
		         $("#lname").hide("slow");
		     }
		 }
		 else if(pass="")
		 {
		     if (pass == 0) {
		         $("#pass").html("Please enter password");
		         $("#pass").show("slow");
		     }
		     else {
		         $("#pass").hide("slow");
		     }
		 }
		 else if(email="")
		 {
		     if (email == "") {
		         $("#email").html("Please enter email")
		         $("#email").show("slow");
		     }
		     else {
		         $("#email").hide("slow");
		     }
		 }
		 else {
		     alert("Registration Successfully!");

		 }
	 });
  });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masdivcph" Runat="Server">

 <div id="full">
     <asp:HiddenField ID="hfUserID" runat="server"/>
<div class="container">
 <h1>Sign up</h1>
 <h3>Create your account by filling the form below</h3>
<div class="a">
 
    <asp:TextBox ID="TextBox1" type="text" name="firstname" placeholder="First Name" class="fname" style="position:relative;right:20px;" runat="server" ></asp:TextBox>
 <span id="fname" style="color:red;display:none;float:left"></span>
</div>

<div class="a">
 
    <asp:TextBox ID="TextBox2" type="text" name="lasttname" placeholder="Last Name" class="lname" style="margin-left:185px;position:relative;top:0px"  runat="server"></asp:TextBox>
 <span id="lname" style="color:red;display:none;"></span>
</div>

<div class="a">

    <asp:TextBox ID="TextBox3" type="password" name="Password" class="pass" placeholder="Password"  runat="server"></asp:TextBox>
 <span id="pass" style="color:red;display:none;"></span>
</div>

<div class="a">
 
    <asp:TextBox ID="TextBox4" type="password" name="Re-TypePassword" class="repass" placeholder="Confirm Password" style="position:relative;left:10px;" runat="server"></asp:TextBox>
 <span id="repass" style="display:none;color:red;"></span>
</div>

<div class="a">

    <asp:TextBox ID="TextBox5" runat="server" type="email" name="Email" class="email" placeholder="Email" style="position:relative;left:10px;" ></asp:TextBox>
 <span id="email" style="display:none;color:red;"></span>
</div>

<div id="i" class="a">
 <label>Gender</label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList>
</div>
    
<hr/>

<div id="i" class="a">
 <label>Date Of Birth</label>
 <input type="date" name="dateofbirth" id="insect" class="dob"/> 
</div>

<hr/>

<div id="i" class="a">
 <label>Country</label>
 <select id="insect" class="country">
  <option value="0">Please Select</option>
  <option value="1">Pakistan</option>
  <option value="2">India</option>
  <option value="3">USA</option>
  <option value="4">China</option>
  <option value="5">France</option>
 </select>
</div>
<hr/>
<div>
    <asp:Button id="Button1" runat="server" Text="Sign Up" type="submit" OnClick="Button1_Click"/>
</div>
</div> </div>
</asp:Content>

