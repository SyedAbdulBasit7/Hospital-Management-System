<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="CurrentEvent.aspx.cs" Inherits="CurrentEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #events{
    width:70%;
    height:800px;
    float:left;
    margin:5px;
    background-color:#ccccb3;
    border-radius:30px;
      border:5px solid black;
    opacity:0.9;
      position:relative;
    left:200px;
    overflow:hidden;
    
}
#events h3 a{
    color:black;
    text-decoration:none;
    position:relative;
    top:10px;
    letter-spacing:3px;
    left:10px;
}
#events a:hover{
    color:#cc0000;
}
#events div a h4:hover{
    color:#cc0000;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masdivcph" Runat="Server">
             <div id="events">
            <h3><a href="#"><b>EVENTS</b></a></h3>
            <hr style="width:15%;border-color:red;float:left;border-width:2px;position:relative;left:10px;"/>
            <hr style="border-color:black;width:80%;float:left;border-width:2px"/>

                <div style="float:left;">
            <a href="#"><img src="cancer.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;color:red;">
                         <b>7 Nov 2018</b></div>
                    <h4><b style="float:left;">National Cancer Awareness Day will be observed across the country </b></h4>
                   </div>
            </a>
                </div>

               <hr style="width:95%;float:left;border-width:2px;border-color:black;" />

              <div style="float:left;">
            <a href="#"><img src="Diabetes.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;color:red;">
                         <b>14 Nov 2018</b></div>
                    <h4><b style="float:left;">World Diabetes Day is the primary global awareness campaign focusing on diabetes mellitus</b></h4>
                   </div>
            </a>
                </div>

               <hr style="width:95%;float:left;border-width:2px;border-color:black;" />

               <div style="float:left;">
            <a href="#"><img src="Aids.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;color:red;">
                         <b>1 Dec 2018</b></div>
                    <h4><b style="float:left;">World AIDS Day, designated on 1 December every year since 1988, is an international day dedicated to raising awareness of the AIDS
                         pandemic caused by the spread of HIV infection and mourning those who have died of the disease</b></h4>
                   </div>
            </a>
                </div>

               <hr style="width:95%;float:left;border-width:2px;border-color:black;" />

              <div style="float:left;">
            <a href="#"><img src="human_right.jpg" style="width:25%;height:100px;float:left;"/>
                 <div style="float:left;color:black;width:68%; position:relative;left:10px;">
                     <div style="float:left;color:black;width:68%; position:relative;left:10px;top:-5px;text-decoration-line:underline;text-decoration-style:double;color:red;">
                         <b>10 Dec 2018</b></div>
                    <h4><b style="float:left;">Human Rights Day is celebrated annually across the world on 10 December every year. The date was chosen to honour the United Nations General Assembly's adoption and proclamation</b></h4>
                   </div>
            </a>
                </div>

            </div>

</asp:Content>

