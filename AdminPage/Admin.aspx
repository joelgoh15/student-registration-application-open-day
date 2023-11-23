<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Portfolio1_1.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Admin Page</title>
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

        div.classDivMainContent {
            width:100%;
            float:left;
            margin-top:50px;
            font-family:Calibri;
            font-size:14px;
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

        .classDivSpace {
            width:inherit;
        }

        .classDivLinkToRegistrationForm {
            width:inherit;
            margin-bottom:100px;
        }

        .CssClassHyperLinkBackToRegistrationForm {
            float:left;
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="False" AutoGenerateColumns="False" DataKeyNames="Id" 
                     BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
                    OnRowDataBound="GridView1_RowDataBound"  OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
                    OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added." Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="Id" ItemStyle-Width="12%" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" >
                            <ItemStyle Width="12%"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Name" ItemStyle-Width="12%" SortExpression="Name" >
                            <ItemTemplate>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>' Width="100%"></asp:TextBox>
                            </EditItemTemplate>       
                            <ItemStyle Width="12%"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" ItemStyle-Width="12%" SortExpression="Email">
                            <ItemTemplate>
                                 <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                 <asp:TextBox ID="txtEmail" runat="server" Text='<%# Eval("Email") %>' Width="100%"></asp:TextBox>
                            </EditItemTemplate>       
                            <ItemStyle Width="12%"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ContactNo" ItemStyle-Width="12%" SortExpression="ContactNo">
                            <ItemTemplate>
                                 <asp:Label ID="lblContactNo" runat="server" Text='<%# Eval("ContactNo") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                 <asp:TextBox ID="txtContactNo" runat="server" Text='<%# Eval("ContactNo") %>' Width="100%"></asp:TextBox>
                            </EditItemTemplate>       
                            <ItemStyle Width="12%"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address" ItemStyle-Width="12%" SortExpression="Address">
                            <ItemTemplate>
                                 <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                 <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("Address") %>' Width="100%"></asp:TextBox>
                            </EditItemTemplate>       
                            <ItemStyle Width="12%"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="AttendDay" ItemStyle-Width="12%" SortExpression="AttendDay">
                            <ItemTemplate>
                                 <asp:Label ID="lblAttendDay" runat="server" Text='<%# Eval("AttendDay") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                 <asp:TextBox ID="txtAttendDay" runat="server" Text='<%# Eval("AttendDay") %>' Width="100%"></asp:TextBox>
                            </EditItemTemplate>       
                            <ItemStyle Width="12%"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Courses" ItemStyle-Width="12%" SortExpression="Courses">
                            <ItemTemplate>
                                 <asp:Label ID="lblCourses" runat="server" Text='<%# Eval("Courses") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                 <asp:TextBox ID="txtCourses" runat="server" Text='<%# Eval("Courses") %>' Width="90%" Height="100px" TextMode="MultiLine"></asp:TextBox>
                            </EditItemTemplate>       
                            <ItemStyle Width="12%"></ItemStyle>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ItemStyle-Width="12%"  >
                            <ItemStyle Width="12%"></ItemStyle>
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <div id="idDivSpace" class="classDivSpace">
                    <br/><br/>
                </div>
                <div id="idDivLinkToRegistrationForm" class="classDivLinkToRegistrationForm">
                    <br/><br/>
                    <asp:HyperLink ID="idHyperLinkBackToRegistrationForm" CssClass="CssClassHyperLinkBackToRegistrationForm" Font-Italic="true" Font-Underline="true" NavigateUrl="~/Registration.aspx"  runat="server">Back to student registration form</asp:HyperLink>
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
