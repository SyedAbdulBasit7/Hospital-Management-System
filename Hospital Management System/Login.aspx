<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
#login{
    float:left;
    overflow:hidden;
    background-image:url(log.jpg);
    background-repeat:no-repeat;
    background-size:cover;
    width:100%;
}
.container{
    margin-top:-130px;
    margin-left:370px;
    padding:20px;
}
#login .container #login-row #login-column .login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 320px;
  border: 2px solid black;
  border-radius:10px;
  background-color:black;
  opacity:0.9;
}
#login .container #login-row #login-column .login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column .login-box #login-form #register-link {
  margin-top: -85px;
}
    </style>
    <script>
        $(document).ready(function () {
            $("#form1").submit(function () {
                var name = $("#masdivcph_username").val();
                var pass = $("#masdivcph_password").val();
                if (name == "" && pass == "") {
                    alert("Fill the form correctly");
                }
            });
        });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masdivcph" Runat="Server">
      	<div id="login">
    <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div class="login-box col-md-12">
                        <h3 class="text-center text-info">Login</h3>
                        <div class="form-group">
                            <label for="username" class="text-info">Email:</label><br/>
                            <asp:TextBox type="text" name="username" id="username" class="form-control" runat="server"></asp:TextBox>
                         
                        </div>
                        <div class="form-group">
                            <label for="password" class="text-info">Password:</label><br/>
                            <asp:TextBox type="password" name="password" id="password" class="form-control" runat="server"></asp:TextBox>
                        
                        </div>
                        <div class="form-group">
                            <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                            <asp:Button ID="Button1" runat="server" type="submit" class="btn btn-info btn-md"  Text="Login" OnClick="Button1_Click" />
                            <asp:Label id="lbutton" style="color:red;"  runat="server" Text="Login is not valid"></asp:Label>
                        </div>
                        <div id="register-link" class="text-right">
                            <a href="forgetpass.aspx" class="text-info">Forget Password</a>
                        </div>
         
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

