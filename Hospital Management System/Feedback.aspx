<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.contact-form input{
    color:black;
    background-color:white;

}
.contact-form textarea{
    background-color:white;
}
.submit
{
    background: #ff5722;
    border-color: transparent;
    color:#fff;
    font-size: 20px;
    font-weight: bold;
    letter-spacing: 2px;
    height: 50px;
    margin-top: 20px;                  
}
.submit:hover
{
    background-color: #f44336;
    cursor: pointer;
}
.maini{
    padding:10px;
    overflow:hidden;
    width:100%;
    background-image:url(fbback.jpg);
    background-size:cover;
    float:left;
}
</style>
    <script>
        $(document).ready(function () {
            $("input[type=text],input[type=number],input[type=email],#masdivcph_texta").focus(function () {
                $(this).css("background-color", "#ccffe6");
            });
            $("input[type=text],input[type=number],input[type=email],#masdivcph_texta").blur(function () {
                $(this).css("background-color", "gray");
            });

            $("#masdivcph_fname").focusout(function () {
                var name = $(this).val();
                var name_l = $(this).val().length;
                if (name == "") {
                    $("#sname").html("Please enter your first name");
                    $("#sname").show("slow");
                }
                else if (name_l <= 5) {
                    $("#sname").html("Name must be grater then 5")
                    $("#sname").show("slow");
                }
                else {
                    $("#sname").hide("slow");
                }
            });

            $("#masdivcph_email").focusout(function () {
                var email = $("#masdivcph_email").val();
                if (email == "") {
                    $("#semail").html("Please enter email")
                    $("#semail").show("slow");
                }
                else if (email.length < 10) {
                    $("#semail").html("Email is not valid")
                    $("#semail").show("slow");
                }
                else {
                    $("#semail").hide("slow");
                }
            });

            $("#masdivcph_number").focusout(function () {
                var number = $("#masdivcph_number").val().length;
                if (number == 0) {
                    $("#snumber").html("Please enter your contact number");
                    $("#snumber").show("slow");
                }
                else if (number < 11 || number > 11) {
                    $("#snumber").html("Number length should be 11 for standard in Pak");
                    $("#snumber").show("slow");
                }
                else {
                    $("#snumber").hide("slow");
                }

            });

            $("#masdivcph_texta").focusout(function () {
                var text = $(this).val();
                var text_l = $(this).val().length;
                if (text == "") {
                    $("#textarea").html("Please enter your Message");
                    $("#textarea").show("slow");
                }
                else if (text_l <= 20) {
                    $("#textarea").html("Message must be grater then 20")
                    $("#textarea").show("slow");
                }
                else {
                    $("#textarea").hide("slow");
                }
            });

            $("#form1").submit(function () {
                var name = $("#masdivcph_fname").val();
                var email = $("#masdivcph_email").val();
                var number = $("#masdivcph_number").val().length;
                var text = $("#masdivcph_texta").val();
                if (text == "") {
                    if (text == "") {
                        $("#textarea").html("Please enter your Message");
                        $("#textarea").show("slow");
                    }
                    else {
                        $("#textarea").hide("slow");
                    }
                    return false;

                }
                else if (number == 0) {
                    if (number == 0) {
                        $("#snumber").html("Please enter your contact number");
                        $("#snumber").show("slow");
                    }
                    else {
                        $("#snumber").hide("slow");
                    }
                    return false;
                }

                else if (name == "" && email == "") {
                    alert("Fill the form correctly");
                }
            
            
                else {
                    alert("Registration Successfully!");
                }
            });

        });
        </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masdivcph" Runat="Server">
    <div class="maini">
      <div class="contact-title" style="color:#fff;text-transform:uppercase;margin-left:300px;">
        <h1 style="font-size: 32px;line-height: 10px;">Getting In Touch</h1>
        <h2 style="font-size: 16px;">We Are Always Ready To Server You !</h2>
         </div>
    
        <div class="contact-form" style="width:60%; margin-left:300px;">

            <asp:TextBox id="fname" type="text" class="form-control" placeholder="Your Name" runat="server"></asp:TextBox>
            <span id="sname" style="color:red;display:none;"></span>
            <br />
            <asp:TextBox type="email" class="form-control" placeholder="Your Email" id="email"  runat="server"></asp:TextBox>
            <span id="semail" style="display:none;color:red;"></span>
            <br />
            <asp:TextBox name="contact" type="number" class="form-control" id="number" placeholder="eg. 03322xxxxxx" runat="server"></asp:TextBox>
            <span id="snumber" style="display:none;color:red;"></span>
            <br />
            <asp:TextBox name="message" class="form-control" placeholder="Message" textmode="MultiLine" id="texta" runat="server" Rows="6"></asp:TextBox>
             <span id="textarea" style="display:none;color:red;"></span>
            <asp:Button ID="Button1" runat="server" Text="Send Feedback" type="submit" class="form-control submit" OnClick="Button1_Click"/>
            <br />
        </div>
        <asp:GridView ID="GridView1" style="text-align:center;margin:5px;width:100%;border-radius:15px;float:left;overflow:hidden" Font-Bold="true" runat="server" BackColor="Black" BorderColor="gray" ForeColor="gray"></asp:GridView>
        </div>
</asp:Content>