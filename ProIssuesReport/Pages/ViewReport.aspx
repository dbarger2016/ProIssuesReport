<%@ Page Title="View PRO Report" Language="C#" MasterPageFile="~/Pages/ProIssuesMasterPage.master" AutoEventWireup="true" CodeFile="ViewReport.aspx.cs" Inherits="Pages_ViewReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="PageHeader">
        <h2>View The PRO Issues Report</h2>
    </div>

    <!-- Select Date Range for Issues -->
    <!--  Search Dates From: -->
    <div id="content" class="divTable">
        <div class="divRow">
            <div class="divColumn">
            </div>
        </div>
    </div>
    <asp:TextBox ID="ReportDateFromTextBox" TextMode="Date" runat="server" CausesValidation="True"></asp:TextBox>
    <!-- DateReportedTextBox Validation -->
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Date Field Is Empty!"
        ControlToValidate="ReportDateFromTextBox" Display="Dynamic" ForeColor="Red"
        ToolTip="Please Select or Enter A Start Date!"></asp:RequiredFieldValidator>

    <label id="lblReportDateFrom">Select Date From:</label>

    <!-- Search Dates To: -->
    <asp:TextBox ID="ReportDateToTextBox" TextMode="Date" runat="server" CausesValidation="true"></asp:TextBox>
    <!-- DateReportedTextBox Validation -->
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Date Field Is Empty!"
        ControlToValidate="ReportDateToTextBox" Display="Dynamic" ForeColor="Red"
        ToolTip="Please Select or Enter An End Date!"></asp:RequiredFieldValidator>
    <!-- End of Validation -->

    <label id="lvlReportDateTo">Select Date To:</label>

    <asp:Button ID="ReportDateFromToSubmit" runat="server" Text="Display Report" OnClick="ReportDateRange_Click" />

    <p>GridView Data Display Test</p>
    <asp:GridView ID="ReportGridView" runat="server">
        <Columns>
            <asp:BoundField DataField="IssueId" HeaderText="Issue ID" SortExpression="IssueId" />
        </Columns>
    </asp:GridView>


    <label id="lblFlagCount">Flag Count:</label>

    <asp:TextBox ID="FlagCountTextBox" runat="server" Width="25px"></asp:TextBox>


</asp:Content>
