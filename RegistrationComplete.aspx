<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationComplete.aspx.cs" Inherits="Portfolio1_1.RegistrationComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Registration Complete</title>
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
            margin-top: 20px;
            width:100%;
            float:left;
            font-family: Calibri;
            font-size: 16px;
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

        .CssClassHyperLinkBackToRegistrationForm {
            float:left;
            color:black;
            font-family: Calibri;
            font-size: 16px;
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
                <h3 class="classH3Tag1" >Registration Complete</h3>
                <div>
                    Your application for the upcoming Blueberry University Open-Day
                    event has been successfully registered.
                    <br/><br/>
                    Please check your email for the comfirmation of your application.
                    <br/><br/>
                    Thank your for your application. We look for forward to seeing you.
                </div>
                <br/><br/><br/>
                <asp:HyperLink ID="idHyperLinkBackToRegistrationForm" CssClass="CssClassHyperLinkBackToRegistrationForm" Font-Italic="true" Font-Underline="true" NavigateUrl="~/Registration.aspx"  runat="server">Back to student registration form</asp:HyperLink>
            </div>
        </div>
         <div id="idRightDivBox" class="classRightDivBox">
        </div>
    </form>
</body>
</html>
