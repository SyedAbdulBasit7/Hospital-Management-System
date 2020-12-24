<%@ Page Title=""  Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <script type="text/javascript">
            $(document).ready(function () {
                $('#Button1').click(function (e) {
                    e.preventDefault();

                    var heightFt = $("#masdivcph_TextBox1").val();
                    heightIn = $("#masdivcph_TextBox2").val();
                    height = parseFloat(heightFt * 12) + parseFloat(heightIn);
                    weight = $("#masdivcph_TextBox3").val();
                    BMI = calcBMI(height, weight);


                    $("#response").text('Your BMI is ' + BMI);
                    $("#response").css('border', '5px solid green');

                });
            });

            function calcBMI(height, weight) {
                var BMI = (weight / (height * height)) * 703

                return Math.round(BMI * Math.pow(10, 2)) / Math.pow(10, 2);
            }

         </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="masdivcph" Runat="Server">
        <section>
           <div id="myCarousel" class="carousel slide" data-ride="carousel" style="float:left;width:100%;height:500px;margin:0px;padding:0px;">
             <!-- Indicators --><ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active" >
        <img src="slide1.jpg" alt="Los Angeles" style="width:100%;height:500px;"/>
      </div>

      <div class="item">
        <img src="slide2.jpg" alt="Chicago" style="width:100%;height:500px;"/>
      </div>
    
      <div class="item">
        <img src="slide3.jpg" alt="New york" style="width:100%;height:500px;"/>
      </div>

      <div class="item">
        <img src="slide4.jpg" alt="New york" style="width:100%;height:500px;"/>
      </div>

     <div class="item">
        <img src="slide5.jpg" alt="New york" style="width:100%;height:500px;"/>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
        <div id="slide2">
            <div style="float:left;width:25%;height:200px;">
                    <a href="Lab_Collection_Point.aspx"><img src="slab.png" style="width:90%;height:150px;margin:8px;"/><p style="color:white;font-size:25px;font-weight:bold;text-align:center;">
                        <asp:Label ID="Label37" runat="server" Text="<%$ Resources:Resource, Label56 %>"></asp:Label></p></a>
                </div>
              
                <div style="float:left;width:25%;height:200px;">
                    <a href="BlindPeople.aspx"><img src="spharmacy.jpg" style="width:90%;height:150px;margin:8px;"/><p style="color:white;font-size:25px;font-weight:bold;text-align:center;">
                        <asp:Label ID="Label38" runat="server" Text="<%$ Resources:Resource, Label57 %>"></asp:Label></p></a>
                </div>
               
                <div style="float:left;width:25%;height:200px;">
                    <a href="Respiratory.aspx"><img src="slungs.jpg" style="width:90%;height:150px;margin:8px;"/><p style="color:white;font-size:25px;font-weight:bold;text-align:center;">
                        <asp:Label ID="Label39" runat="server" Text="<%$ Resources:Resource, Label58 %>"></asp:Label></p></a>
                </div>
    
				 <div style="float:left;width:25%;height:200px;">
                    <a href="Surgery.aspx"><img src="ssurgery.jpg" style="width:90%;height:150px;margin:8px;"/><p style="color:white;font-size:25px;font-weight:bold;text-align:center;">
                        <asp:Label ID="Label40" runat="server" Text="<%$ Resources:Resource, Label59 %>"></asp:Label></p></a>
                </div>
        </div>
           
        </section>
        <div id="news">
            <h3><a href="#"><b>
                <asp:Label ID="Label3" runat="server" Text="<%$ Resources:Resource, Label20 %>"></asp:Label></b></a></h3>
            <hr style="width:15%;border-color:red;float:left;border-width:2px;"/>
            <hr style="border-color:black;width:80%;float:left;border-width:2px"/>

            <div style="float:left;">
            <a href="#"><img src="metastatic.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;">
                         <b>23 Nov 2018</b></div>
                    <h4><b>
                        <asp:Label ID="Label4" runat="server" Text="<%$ Resources:Resource, Label21 %>"></asp:Label></b></h4>
                   </div>
            </a>
                </div>
           
             <hr style="width:95%;float:left;border-width:2px;border-color:black;" />
         
              <div style="float:left;">
            <a href="#"><img src="lung.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;">
                         <b>22 Nov 2018</b></div>
                    <h4 style="float:left;position:relative;top:-8px;"><b>
                        <asp:Label ID="Label5" runat="server" Text="<%$ Resources:Resource, Label22 %>"></asp:Label></b></h4>
                   </div>
            </a>
                </div>
             <hr style="width:95%;float:left;border-width:2px;border-color:black;" />

             <div style="float:left;">
            <a href="#"><img src="nutrition.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;">
                         <b>21 Nov 2018</b></div>
                    <h4><b>
                        <asp:Label ID="Label6" runat="server" Text="<%$ Resources:Resource, Label23 %>"></asp:Label></b></h4>
                   </div>
            </a>
                </div>

              <hr style="width:95%;float:left;border-width:2px;border-color:black;" />
            
              <div style="float:left;">
            <a href="#"><img src="heart.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;">
                         <b>20 Nov 2018</b></div>
                    <h4 style="float:left;position:relative;top:-8px;"><b>
                        <asp:Label ID="Label7" runat="server" Text="<%$ Resources:Resource, Label24 %>"></asp:Label></b></h4>
                   </div>
            </a>
                </div>
       
            </div>    
         <div id="events">
            <h3><a href="CurrentEvent.aspx"><b>
                <asp:Label ID="Label8" runat="server" Text="<%$ Resources:Resource, Label25 %>"></asp:Label></b></a></h3>
            <hr style="width:15%;border-color:red;float:left;border-width:2px;position:relative;left:10px;"/>
            <hr style="border-color:black;width:80%;float:left;border-width:2px"/>

                <div style="float:left;">
            <a href="CurrentEvent.aspx"><img src="cancer.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;color:red;">
                         <b>7 Nov 2018</b></div>
                    <h4><b style="float:left;">
                        <asp:Label ID="Label9" runat="server" Text="<%$ Resources:Resource, Label26 %>"></asp:Label></b></h4>
                   </div>
            </a>
                </div>

               <hr style="width:95%;float:left;border-width:2px;border-color:black;" />

              <div style="float:left;">
            <a href="CurrentEvent.aspx"><img src="Diabetes.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;color:red;">
                         <b>14 Nov 2018</b></div>
                    <h4><b style="float:left;">
                        <asp:Label ID="Label10" runat="server" Text="<%$ Resources:Resource, Label27 %>"></asp:Label></b></h4>
                   </div>
            </a>
                </div>

               <hr style="width:95%;float:left;border-width:2px;border-color:black;" />

               <div style="float:left;">
            <a href="CurrentEvent.aspx"><img src="Aids.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;color:red;">
                         <b>1 Dec 2018</b></div>
                    <h4><b style="float:left;">
                        <asp:Label ID="Label11" runat="server" Text="<%$ Resources:Resource, Label28 %>"></asp:Label></b></h4>
                   </div>
            </a>
                </div>

               <hr style="width:95%;float:left;border-width:2px;border-color:black;" />

              <div style="float:left;">
            <a href="CurrentEvent.aspx"><img src="human_right.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;color:red;">
                         <b>10 Dec 2018</b></div>
                    <h4><b style="float:left;">
                        <asp:Label ID="Label12" runat="server" Text="<%$ Resources:Resource, Label29 %>"></asp:Label></b></h4>
                   </div>
            </a>
                </div>

            </div>
           <div id="BMI" >
               <div style="letter-spacing:5px;color:#0000ff;text-align:center;font-weight:bold;">
                   <h2>
                       <asp:Label ID="Label13" runat="server" Text="<%$ Resources:Resource, Label30 %>"></asp:Label></h2>
                   </div>
               <div style="color:black;font-size:16px;">
                   <asp:Label ID="Label14" runat="server" Text="<%$ Resources:Resource, Label31 %>"></asp:Label>
                   </div>
               <div>
                   <img src="bmi.jpg" style="width:100%;height:300px;float:left;"/>
                   </div>
               
    	<div style="float:left;position:relative;top:10px;width:100%;">
	       <asp:Label ID="Label1" runat="server" Text="<%$ Resources:Resource, Label32 %>" ></asp:Label>
           <asp:TextBox ID="TextBox1" runat="server"  name="height_ft" placeholder="feet"></asp:TextBox> 
            <asp:TextBox ID="TextBox2" runat="server" name="height_in" placeholder="inch"></asp:TextBox>
        </div>
        
        <div style="float:left;position:relative;top:50px;width:100%;">
        	<asp:Label ID="Label2" runat="server" Text="<%$ Resources:Resource, Label33 %>"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" name="weight" placeholder="lbs"></asp:TextBox> 
        </div>
        <div style="float:left;position:relative;top:70px;left:100px;">
            <input value="Calculate" type="button" id="Button1"/>       
        </div>
                <div id="response"></div>

             </div>
        <div id="video">
         <div class="embed-responsive embed-responsive" style="width:50%;height:200px;float:left;">
              <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/wQ2TN_gI3sE" style="width:70%;height:190px;float:left;position:relative;left:90px;"></iframe>
               </div>
         <div class="embed-responsive embed-responsive" style="width:50%;height:200px;float:left;">
              <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/-o-w06DKr0A" style="width:70%;height:190px;float:left;position:relative;left:100px;"></iframe>
               </div>
         </div>
        <div id="HWLC">
            <h3>
                <asp:Label ID="Label15" runat="server" Text="<%$ Resources:Resource, Label34 %>"></asp:Label></h3>
            <div>
                <h3>
                    <asp:Label ID="Label16" runat="server" Text="<%$ Resources:Resource, Label35 %>"></asp:Label></h3>
                <ul>
                    <li>
                        <asp:Label ID="Label17" runat="server" Text="<%$ Resources:Resource, Label36 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label18" runat="server" Text="<%$ Resources:Resource, Label37 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label19" runat="server" Text="<%$ Resources:Resource, Label38 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label20" runat="server" Text="<%$ Resources:Resource, Label39 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label21" runat="server" Text="<%$ Resources:Resource, Label40 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label22" runat="server" Text="<%$ Resources:Resource, Label41 %>"></asp:Label></li>
                    </ul>
                
                     <a href="Health_Wellness.aspx"><div id="read"><h4>
                         <asp:Label ID="Label23" runat="server" Text="<%$ Resources:Resource, Label42 %>"></asp:Label></h4></div></a>
                 
            </div>
            <div>
                <ul style="position:relative;top:55px;">
                    <li>
                        <asp:Label ID="Label24" runat="server" Text="<%$ Resources:Resource, Label43 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label25" runat="server" Text="<%$ Resources:Resource, Label44 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label26" runat="server" Text="<%$ Resources:Resource, Label45 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label27" runat="server" Text="<%$ Resources:Resource, Label46 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label28" runat="server" Text="<%$ Resources:Resource, Label47 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label29" runat="server" Text="<%$ Resources:Resource, Label48 %>"></asp:Label></li>
                    </ul>
                </div>
            <div>
                <h3>
                    <asp:Label ID="Label30" runat="server" Text="<%$ Resources:Resource, Label49 %>"></asp:Label></h3>
                <ul>
                    <li>
                        <asp:Label ID="Label31" runat="server" Text="<%$ Resources:Resource, Label50 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label32" runat="server" Text="<%$ Resources:Resource, Label51 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label33" runat="server" Text="<%$ Resources:Resource, Label52 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label34" runat="server" Text="<%$ Resources:Resource, Label53 %>"></asp:Label></li>
                    <li>
                        <asp:Label ID="Label35" runat="server" Text="<%$ Resources:Resource, Label54 %>"></asp:Label></li>
                    </ul>
                </div>
            <div>
                <h3>
                    <asp:Label ID="Label36" runat="server" Text="<%$ Resources:Resource, Label55 %>"></asp:Label></h3>
                <ul style="list-style:none;margin:0;">
                    <li><pre style="font-size:16px;color:black;font-weight:bold;">Monday – Friday
09:00 AM to 02:00 PM</pre></li>
                    </ul>
                </div>
            </div>

</asp:Content>

