<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Portfolio1_1.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>About</title>
    <script type="text/javascript">
    </script> 
    <style type="text/css">
        div.classLeftDivBox {
        }

        div.classCentreDivBox {
            width: 80%;
            min-width: 1000px;
            height: 80px;
            float: left;
            margin-left: 100px;
            margin-right: 100px;
            border-bottom-style: solid;
            border-bottom-color: black;
            border-bottom-width: 1px;
            background-color: antiquewhite;
        }

        div.classRightDivBox {
        }

        label.classLabelAppName {
            font-family: Calibri;
            font-size: 32px;
            width:fit-content;
            float:left;
        }

        label.classLabelText {
            font-family: Calibri;
            font-size: 18px;
            width:100%;
            float:left;
        }

        .classHeaderDiv {
            width:100%;
            float:left;
        }

        .classDivMainContent {
            width:100%;
            margin-top:50px;
            float:left;
        }

        #idDivRegistrationButton {
            background-color: inherit;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            transition: 0.3s;
            font-size: 16px;
            font-family:Calibri;
        }

        #idDivAboutButton {
            background-color: #ccc;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            transition: 0.3s;
            font-size: 16px;
            font-family:Calibri;
        }

        .classLinkAbout {
            color:black;
            text-decoration:none;
        }

        .classLinkRegistration {
            color:black;
            text-decoration:none;
        }

        .classDivFooter {
            border-top: 1px solid black;
            position: fixed;
            bottom: 0;
            width: inherit;
            min-width: 1000px;
            height: 40px;
            background-color: aliceblue;
            font-family: Calibri;
            font-size: 11px;
            width:inherit;
            float:left;
        }

        .tab {
            overflow: hidden;
            border: 1px solid #ccc; 
            background-color: #f1f1f1; 
            width:100%;
            float:left;
        }

        .tabcontent {
            border: 1px solid #ccc;
            border-top: none;
            font-family:Calibri;
            font-size: 16px;
            width:100%;
            float:left;
        }

        .CssClassIdUserLoginStatus {
            float:right;
            font-family:Calibri;
            font-size:13px;
            color:black;
        }

        .classLaabelUserLoginName {
            float:right;
            font-family:Calibri;
            font-size:13px;
            color:black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="idLeftDivBox" class="classLeftDivBox">
        </div>
        <div id="idCentreDivBox" class="classCentreDivBox">
            <div id="idHeaderDiv" class="classHeaderDiv">
                <label id="idLabelAppName" class="classLabelAppName">
                    <strong>Student Registration Application</strong>
                </label>
                <asp:LoginStatus ID="idUserLoginStatus" runat="server" CssClass="CssClassIdUserLoginStatus"  LogoutText="[Logout]" LogoutAction="RedirectToLoginPage" />
                <label id="idLabelUserLoginName" class="classLaabelUserLoginName" >
                    [<asp:LoginName ID="idUserLoginName" runat="server"    />]
                </label>
                <br />
                <label id="idLabelText" class="classLabelText">
                    BLUEBERRY UNIVERSITY OPEN-DAY EVENT
                </label>
            </div>
            <div id="idDivMainContent" class="classDivMainContent">
                <div class="tab">
                    <div id="idDivAboutButton" class="tablinks"><a id="idLinkAbout" class="classLinkAbout" href="About.aspx"><strong>About</strong></a></div>
                    <div id="idDivRegistrationButton" class="tablinks"><a id="idLinkRegistration" class="classLinkRegistration" href="Registration.aspx"><strong>Registration</strong></a></div>
                </div>
                <div id="idDivAbout" class="tabcontent">
                    <h3>About</h3>
                    <p>
                        Student Registration Application. It is an online application for 
                        student to register themselves for an open day event in a 
                        university (Blueberry University).
                    </p>
                    <p>
                        A software development portfolio by Joel Goh Chong Hui.
                    </p>
                </div>
            </div>
            <div id="idDivFooter" class="classDivFooter">
                <footer>
                    <label>
                        <i><strong>&copy; Student Registration Application</strong></i>
                    </label>
                </footer>
            </div>
        </div>
         <div id="idRightDivBox" class="classRightDivBox">
        </div>
    </form>
</body>
</html>
