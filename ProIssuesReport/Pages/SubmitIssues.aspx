<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/ProIssuesMasterPage.master" AutoEventWireup="true" CodeFile="SubmitIssues.aspx.cs" Inherits="Pages_SubmitIssues" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   <!-- View Submitted Issues Page Title -->
   <title>Submit An Issue</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div id="PageHeader">
      <h2>
         Submit A PRO Issue/Error</h2>
   </div>

   <!--Start Div Table For Input Controls -->
   <div id="content" class="divTable">
      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="LabelIssueName" runat="server" Text="Name of the Issue/Error"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="IssueNameTextBox" runat="server" Width="256px" placeholder="Issue/Error" CausesValidation="True"></asp:TextBox>
            <!-- IssueNameTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Text Field Is Empty!" 
                                        ControlToValidate="IssueNameTextBox" Display="Dynamic" ForeColor="Red" 
                                        ToolTip="Please Enter An Issue/Error Here"></asp:RequiredFieldValidator>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="IssueNameTextBox"
                                            ErrorMessage="Must Be Between 3 And 25 Letters!" ForeColor="Red" 
                                            ValidationExpression="^[\s\S]{3,25}$" Display="Dynamic"></asp:RegularExpressionValidator>
            <!-- End of Validation -->
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="LabelIssueDescription" runat="server" Text="Description/Details of the Issue/Error"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="IssueDescriptionTextBox" runat="server" TextMode="MultiLine" placeholder="Description" 
                         Width="512px" Height="128px" MaxLength="300" CausesValidation="True"></asp:TextBox>
            <!-- IssueDescriptionTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Text Field Is Empty!" 
                                        ControlToValidate="IssueDescriptionTextBox" Display="Dynamic" ForeColor="Red" 
                                        ToolTip="Please Enter Details Of Your Issue/Error"></asp:RequiredFieldValidator>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="IssueDescriptionTextBox"
                                            ErrorMessage="Must Be At Least 3 Letters In Length!" ForeColor="Red" 
                                            ValidationExpression="^[\s\S]{3,}$" Display="Dynamic"></asp:RegularExpressionValidator>
            <!-- End of Validation -->
         </div>
      </div>
      <div class="divRow">
         <div class="divcolum">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="LabelReporterName" runat="server" Text="Enter your Name"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="ReporterNameTextBox" runat="server" placeholder="Reported By?" Width="256px" 
                         MaxLength="50" CausesValidation="True"></asp:TextBox>
            <!-- ReporterNameTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Text Field Is Empty!" 
                                        ControlToValidate="ReporterNameTextBox" Display="Dynamic" ForeColor="Red" 
                                        ToolTip="Please Enter The Reporter's Name"></asp:RequiredFieldValidator>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="ReporterNameTextBox"
                                            ErrorMessage="Must Be Between 3 And 25 Letters!" ForeColor="Red" 
                                            ValidationExpression="^[\s\S]{3,25}$" Display="Dynamic"></asp:RegularExpressionValidator>
            <!-- End of Validation -->
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="LabelIssueDate" runat="server" Text="Date Reported"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="DateReportedTextBox" runat="server" TextMode="Date" Width="256px" 
                         BackColor="White" CausesValidation="True"></asp:TextBox>
            <!-- DateReportedTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Date Field Is Empty!" 
                                        ControlToValidate="DateReportedTextBox" Display="Dynamic" ForeColor="Red" 
                                        ToolTip="Please Select or Enter A Date!" maxLength="10"></asp:RequiredFieldValidator>
            <!-- End of Validation -->
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="IssueStatusLabel" runat="server" Text="Current Status:"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="IssueStatusTextBox" runat="server" Text="Open" ReadOnly="true"></asp:TextBox>
         </div>
      </div>
       <div class="divRow">
         <div class="divColumn">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Button ID="IssueSubmit" runat="server" Text="Submit Issue" OnClick="IssueSubmit_Click" Width="256px" />
         </div>
      </div>
   </div>

</asp:Content>

