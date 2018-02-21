<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/ProIssuesMasterPage.master" AutoEventWireup="true" CodeFile="ViewReport.aspx.cs" Inherits="Pages_ViewReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

   <!-- View Report Page Title -->
   <title>View PRO Report</title>

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
            <asp:TextBox ID="ReportDateFromTextBox" TextMode="Date" runat="server" CausesValidation="True"></asp:TextBox>
            <!-- DateReportedTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Date Field Is Empty!"
                                        ControlToValidate="ReportDateFromTextBox" Display="Dynamic" ForeColor="Red"
                                        ToolTip="Please Select or Enter A Start Date!" maxLength="10"></asp:RequiredFieldValidator>
            <!-- End of Validation -->
         </div>
         <div class="divRow">
            <div class="divColumn">
               <asp:Label ID="ReportDateFromLabel" runat="server" Text=" Select Date From "></asp:Label>
            </div>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">&nbsp</div>
      </div>
      <!-- Search Dates To: -->
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="ReportDateToTextBox" TextMode="Date" runat="server" CausesValidation="true"></asp:TextBox>
            <!-- DateReportedTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Date Field Is Empty!"
                                        ControlToValidate="ReportDateToTextBox" Display="Dynamic" ForeColor="Red"
                                        ToolTip="Please Select or Enter An End Date!" maxLength="10"></asp:RequiredFieldValidator>
            <!-- End of Validation -->
            <div class="divRow">
               <div class="divColumn">
                  <asp:Label ID="ReportDateTo" runat="server" Text=" Select Date To "></asp:Label>
               </div>
            </div>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Button ID="ReportDateFromToSubmit" runat="server" Text="Display Report" OnClick="ReportDateRange_Click" /><br />
         </div>
      </div>
   </div>

   <p>GridView Data Display Test</p>
   <asp:GridView ID="ReportGridView" runat="server">

   </asp:GridView>

</asp:Content>

