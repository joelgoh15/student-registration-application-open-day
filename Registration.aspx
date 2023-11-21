<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Portfolio1_1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Registration</title>
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

        .tab {
            overflow: hidden;
            border: 1px solid #ccc; 
            background-color: #f1f1f1; 
            width:100%;
            float:left;
        }

        #idDivAboutButton {
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

        #idDivRegistrationButton {
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

        .tabcontent {
            border: 1px solid #ccc;
            border-top: none;
            font-family:Calibri;
            font-size: 16px;
            width:100%;
            float:left;
        }

        .classDivMainContent {
            width:100%;
            margin-top:50px;
            float:left;
        }
        
        .classTableParticulars {
            width: 100%;
            border-collapse: collapse;
        }

        table.classTableParticulars td {
        }

        .inputTextBox {
            width: 99%;
            height: 25px;
            border-radius: 5px;
            font-family: Calibri;
            font-size: 16px;
        }

        .classTextAreaAdress {
            width: 99%;
            height: 100px;
            border-radius: 5px;
            resize:none;
            font-family:Calibri;
            font-size:16px;
        }

        .classSelectOpenDayOption {
            width: 40%;
            height: 25px;
            border-radius: 5px;
            font-family: Calibri;
            font-size: 16px;
        }

        .classDivCouseSelectHolder {
            border: 1px solid black;
            border-radius: 5px;
            width: 40%;
            height: 160px;
            float:left;
            margin-right:20px;
        }

        .classTableCouseSelectHolder {
            width: 100%;
            border-collapse: collapse;
        }

        .classTableCouseSelectHolder th {
            text-align: center;
            font-family: Calibri;
            font-size: 16px;
            background-color: antiquewhite;
        }

        .classTableCouseSelectHolder tr {    
            font-family: Calibri;
            font-size: 16px;
        }

        .classSubmitButton {
            font-family: Calibri;
            font-size: 16px;
            text-align: center;
            background-color: white; 
            color: #4CAF50;
            padding: 11px 28px; /* 15px 32px */
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            border: 2px solid #4CAF50;
        }

        .classSubmitButton:hover {
            background-color: #e7e7e7;
        }


        .classClearAllButton {
            font-family: Calibri;
            font-size: 16px;
            text-align: center;
            background-color: white;
            color: orange;
            padding: 11px 28px; /* 15px 32px */
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            border: 2px solid orange;
        }

        .classClearAllButton:hover {
            background-color: #e7e7e7;
        }

        .classDivFooter {
            border-top: 1px solid black;
            /*position: fixed;*/
            bottom: 0;
            width: inherit;
            min-width: 1000px;
            height: 40px;
            background-color: aliceblue;
            font-family: Calibri;
            font-size: 11px;
            width:100%;
            float:left;
            margin-top:50px;
        }

        label.classLabelMandatoryFieldMessage {
            font-family: Calibri;
            font-size: 13px;
            color: red;
            font-style:italic;
        }

        .classHeaderDiv {
            width:100%;
            float:left;
        }

        .classLinkAbout {
            color:black;
            text-decoration:none;
        }

        .classDivLinkToAdminForm {
            width:100%;
            float:left;
        }

        .CssClassHyperLinkBackToRegistrationForm {
            float:right;
            color:black;
            font-family: Calibri;
            font-size: 16px;
        }

        .CssClassIdUserLoginStatus {
            float:right;
            font-family:Calibri;
            font-size:13px;
            color:black;
        }

        .CssClassIdUserLoginName {
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
                    <div id="idDivRegistrationButton" class="tablinks"><strong>Registration</strong></div>
                </div>
                <div id="Registration" class="tabcontent">
                <h3>Registration</h3>
                <p>
                    Kindly fill up the form to register for the upcoming open
                    day event.
                </p>
                    <table id="idTableParticulars" class="classTableParticulars">
                        <tr>
                            <td>
                                <label><strong>Name:</strong></label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="idNameTextBox" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="idNameTextBoxRequiredFieldValidator" runat="server" CssClass="classLabelMandatoryFieldMessage" ForeColor="Red" ControlToValidate="idNameTextBox" ErrorMessage="Name field is mandatory." Display="Dynamic" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><br /></td>
                        </tr>
                        <tr>
                            <td><label><strong>Email:</strong></label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="idEmailTextBox" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                <br />  
                                <asp:RequiredFieldValidator ID="idEmailTextBoxRequiredFieldValidator" runat="server" CssClass="classLabelMandatoryFieldMessage" ForeColor="Red" ControlToValidate="idEmailTextBox" ErrorMessage="Email field is mandatory." Display="Dynamic" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><br /></td>
                        </tr>
                        <tr>
                            <td><label><strong>Contact Number:</strong></label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="idContactNumberTextBox" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="idContactNumberTextBoxRequiredFieldValidator" runat="server" CssClass="classLabelMandatoryFieldMessage" ForeColor="Red" ControlToValidate="idContactNumberTextBox" ErrorMessage="Contact Number field is mandatory." Display="Dynamic" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><br /></td>
                        </tr>
                        <tr>
                            <td><label><strong>Address:</strong></label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="idTextAreaAdress" TextMode="MultiLine" CssClass="classTextAreaAdress"  runat="server"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="idTextAreaAddressRequiredFieldValidator" runat="server" CssClass="classLabelMandatoryFieldMessage" ForeColor="Red" ControlToValidate="idTextAreaAdress" ErrorMessage="Address field is mandatory." Display="Dynamic" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><br /></td>
                        </tr>
                        <tr>
                            <td><label><strong>On which day do you plan to attend an Open Day:</strong></label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="idSelectOpenDayOption" CssClass="classSelectOpenDayOption" runat="server">
                                    <asp:ListItem Selected="True" Text=""></asp:ListItem>
                                    <asp:ListItem Text="Wednesday, 28-June">Wednesday, 28-June</asp:ListItem>
                                    <asp:ListItem Text="Thursday, 29-June">Thursday, 29-June</asp:ListItem>
                                    <asp:ListItem Text="Friday, 30-June">Friday, 30-June</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ID="idSelectOpenDayOptionRequiredFieldValidator" runat="server" CssClass="classLabelMandatoryFieldMessage" ForeColor="Red" ControlToValidate="idSelectOpenDayOption" ErrorMessage="This field is mandatory." Display="Dynamic" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><br/></td>
                        </tr>
                        <tr>
                            <td>
                                <strong>What courses are you interested in:</strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="idDivBusinessCouseSelectHolder" class="classDivCouseSelectHolder">
                                    <table id="idTableBusinessCouseSelectHolder" class="classTableCouseSelectHolder">
                                        <tr>
                                            <th>
                                                <strong>Business:</strong>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">
                                                    <asp:CheckBox ID="idCheckBoxEventManagementAndMarketing" runat="server" Text="Event Management and Marketing" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">
                                                    <asp:CheckBox ID="idCheckBoxAccounting" runat="server"  Text="Accounting"  />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">
                                                    <asp:CheckBox ID="idCheckBoxFinance" runat="server" Text="Finance" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">
                                                    <asp:CheckBox ID="idCheckBoxMarketing" runat="server" Text="Marketing" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">
                                                    <asp:CheckBox ID="idCheckBoxBusinessAdministration" runat="server" Text="Business Administration" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div id="idDivEngineeringCouseSelectHolder" class="classDivCouseSelectHolder">
                                    <table id="idTableEngieeringCouseSelectHolder" class="classTableCouseSelectHolder">
                                        <tr>
                                            <th>
                                                <strong>Engineering:</strong>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">
                                                    <asp:CheckBox ID="idCheckBoxCivilEng" runat="server" Text="Civil Engineering" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">                                                   
                                                    <asp:CheckBox ID="idCheckBoxMechanicalEng" runat="server" Text="Mechanical Engineering" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">                                           
                                                    <asp:CheckBox ID="idCheckBoxElectricalEng" runat="server" Text="Electrical Engineering" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">                                                  
                                                    <asp:CheckBox ID="idCheckBoxElectronicEng" runat="server" Text="Electronic Engineering" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><br/></td>
                        </tr>
                        <tr>
                            <td>
                                <div id="idDivArtsAndDesignCouseSelectHolder" class="classDivCouseSelectHolder">
                                    <table id="idTableArtsAndDesignCouseSelectHolder" class="classTableCouseSelectHolder">
                                        <tr>
                                            <th>
                                                <strong>Arts & Design:</strong>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">
                                                    <asp:CheckBox ID="idCheckBoxFashionManagementAndCommmunication" runat="server" Text="Fashion Management and Commmunication" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">
                                                    <asp:CheckBox ID="idCheckBoxGraphicDesign" runat="server" Text="Graphic Design" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="container">
                                                    <asp:CheckBox ID="idCheckBoxIndoorArchitectrureAndDesign" runat="server" Text="Indoor Architectrure And Design" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><br/><br/></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="idSubmitButton" CssClass="classSubmitButton" runat="server" Text="Submit" OnClick="idSubmitButton_Click" />
                                <asp:Button ID="idClearAllButton" CssClass="classClearAllButton" runat="server" Text="Clear All" OnClick="idClearAllButton_Click" CausesValidation="False" />
                                <asp:LinqDataSource ID="InsertLinqDataSource" runat="server" ContextTypeName="Portfolio1_1.StudentRegistrationAppDataClassesDataContext" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="StudentRegistationAppTables">
                                </asp:LinqDataSource>
                            </td>    
                        </tr>
                        <tr>
                            <td>
                                <br/><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="idDivLinkToAdminForm" class="classDivLinkToAdminForm">
                                    <asp:HyperLink ID="idHyperLinkBackToAdminForm" CssClass="CssClassHyperLinkBackToRegistrationForm" Font-Italic="true" Font-Underline="true" NavigateUrl="~/AdminPage/Admin.aspx"  runat="server">Back to admin site</asp:HyperLink>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br/><br/>
                            </td>
                        </tr>
                    </table>
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
