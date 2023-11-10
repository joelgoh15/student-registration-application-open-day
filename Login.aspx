<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Portfolio1_1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Login</title>
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

        div.classHeaderDiv {
            width:100%;
        }

        label.classLabelAppName {
            font-family: Calibri;
            font-size: 32px;
        }

        label.classLabelText {
            font-family: Calibri;
            font-size: 18px;
        }


        div.classDivLoginTableContent {
            width: 100%;
            /*border:1px solid black;*/
            margin-top:50px;
            
        }

        

        .classLoginButton {
        background-color: #4CAF50;
        border: none;
        color: white;
        padding: 5px 30px;
        text-align: center;
        display: inline-block;
        font-size: 16px;
        font-family: Calibri;
        margin-top: 7px;
        }

        .classLoginTextBox {
            font-family:Calibri;
            font-size:16px;
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
        }

        .classTitleTextStyle {
            font-family:Calibri;
            font-size:16px;
            text-align: center;
            height: 30px;
            background-color: antiquewhite;
        }

        .classInstructionTextStyle {
            /*font-family:Calibri;
            font-size:16px;*/
            
        }

        .classASPLogin {
            font-family:Calibri;
            font-size: 16px;
            border-collapse: collapse;
            border-style:none;
            border-width: 0px;
        }

        .classTdStyle1 {
            width: 328px;
        }

        table.classTableLoginTableContent {
            width: 100%;
            border-collapse: collapse;
        
        }

        
        

         div.classDivAdditionalDetails {
            width: 100%; /*100%*/ 
             /*border:1px solid black; */
            float: left;
            margin-top: 20px;
        }

        details.classDetailsTagAdditionalDetail {
            font-family: Calibri;
            font-size: 15px;
        }

        div.classDivAdditionalDetails2 {
            margin-left: 20px;
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
            /*text-align:start;*/
            /*font-size:*/
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
                <br />
                <label id="idLabelText" class="classLabelText">
                    BLUEBERRY UNIVERSITY OPEN-DAY EVENT
                </label>
            </div>
            
        
            
            <div id="idDivLoginTableContent" class="classDivLoginTableContent">
                <table id="idTableLoginTableContent" class="classTableLoginTableContent" >
                    <tr>
                        <td class="classTdStyle1">
                            <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderStyle="None" BorderWidth="0px" Font-Names="Calibri" Font-Size="16px" ForeColor="#333333" Font-Italic="True" DisplayRememberMe="False" OnLoggedIn="Login1_LoggedIn">
                                <InstructionTextStyle CssClass="classInstructionTextStyle" Font-Italic="True"  />
                                <LoginButtonStyle CssClass="classLoginButton" />
                                <TextBoxStyle CssClass="classLoginTextBox"  />
                                <TitleTextStyle  CssClass="classTitleTextStyle" />
                            </asp:Login>
                        </td>
                        <td>
                            <img id="idImgStudent" class="classImgStudent" src="/images/pic1.png" alt="Student" width="291" height="205" />
                        </td>
                    </tr>
                </table>
            </div>




            <div id="idDivAdditionalDetails" class="classDivAdditionalDetails" >
                <details id="idDetailsTagAdditionalDetail" class="classDetailsTagAdditionalDetail" >
                    <summary><strong><u>To login as user:</u></strong></summary>
                    <div id="idDivAdditionalDetails2" class="classDivAdditionalDetails2" >
                        <i>username: user01</i> <br />
                        <i>password: user01password@01</i>
                    </div>
                </details>
            <br />

            <details class="classDetailsTagAdditionalDetail">
                <summary><strong><u>To login as admin:</u></strong></summary>
                <div class="classDivAdditionalDetails2" >
                    <i>username: admin01</i> <br />
                    <i>password: admin01password@01</i>
                </div>
            </details>
        </div>
                

        <div id="idDivFooter" class="classDivFooter">
                <footer>
                    <label>
                        <!--<h6>&copy; Student Registration Application</h6>-->
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
