<%@ Page Title="View Issues" Language="C#" MasterPageFile="~/Pages/ProIssuesMasterPage.master" AutoEventWireup="true" CodeFile="IssuesTable.aspx.cs" Inherits="Pages_IssuesTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   <div id="PageHeader">
      <h2>View Issues/Errors</h2>
   </div>

   <!--Start Div Table For Input Controls -->
   <!-- Select Date Range for Issues -->
   <!--  Search Dates From: -->
   <div id="content" class="divTable">
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="IssueDateFromTextBox" TextMode="Date" runat="server" CausesValidation="true" MaxLength="10"></asp:TextBox>
            <!-- DateReportedTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Date Field Is Empty!"
                                        ControlToValidate="IssueDateFromTextBox" Display="Dynamic" ForeColor="Red"
                                        ToolTip="Please Select or Enter A Start Date!"></asp:RequiredFieldValidator>
            <!-- End of Validation -->
         </div>
          </div>
         <div class="divRow">
            <div class="divColumn"></div>
             <label id="lblIssueDateFrom">Select Date From:</label>
         </div>
   <div class="divRow">
      <div class="divColum">&nbsp</div>
   </div>
   <div class="divRow">
      <div class="divColum">&nbsp</div>
   </div>
   <div class="divRow">
      <div class="divColumn">
         <!-- Search Dates To: -->
         <asp:TextBox ID="IssueDateToTextBox" TextMode="Date" runat="server" CausesValidation="True" MaxLength="10"></asp:TextBox>
         <!-- DateReportedTextBox Validation -->
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Date Field Is Empty!"
                                     ControlToValidate="IssueDateToTextBox" Display="Dynamic" ForeColor="Red"
                                     ToolTip="Please Select or Enter An End Date!"></asp:RequiredFieldValidator>
         <!-- End of Validation -->
      </div>
   </div>
      <div class="divRow">
         <div class="divColumn">
             <label id="lblIssueDateTo">Select Date To:</label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Button ID="IssueDateFromToSubmit" runat="server" Text="Display Table" OnClick="IssueDateRange_Click" />
         </div>
      </div>
   </div>
   <br />
   <br />

   <!-- GridView for Issues Table  -->
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
      <Columns>
         <asp:BoundField DataField="IssueId" HeaderText="Issue ID" SortExpression="IssueId" />
         <asp:BoundField DataField="IssueName" HeaderText="Issue Name" SortExpression="IssueName" />
         <asp:BoundField DataField="IssueDescription" HeaderText="Details" SortExpression="IssueDescription" />
         <asp:BoundField DataField="IssueReporter" HeaderText="Reporter" SortExpression="IssueReporter" />
         <asp:BoundField DataField="IssueDate" HeaderText="Date Submitted" SortExpression="IssueDate" DataFormatString="{0:d}"/>
         <asp:BoundField DataField="IssueStatus" HeaderText="Status" SortExpression="IssueStatus" />
      </Columns>
   </asp:GridView>

</asp:Content>

