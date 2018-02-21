<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/ProIssuesMasterPage.master" AutoEventWireup="true" 
         CodeFile="BuildProReport.aspx.cs" Inherits="Pages_BuildProReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

   <!-- Build PRO Report Page Title -->
   <title>Build PRO Report</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   <div id="PageHeader">
      <h2>Build The PRO Issue Report</h2>
   </div>

   <!--Start Div Table For Input Controls -->
   <div id="content" class="divTable">
      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="ErrorNameLabel" runat="server" Text="Enter Major Error/Theme:"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="ErrorNameTextBox" runat="server" Width="256px" CausesValidation="True"></asp:TextBox>
            <!-- ErrorNameTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Text Field Is Empty!"
                                        ControlToValidate="ErrorNameTextBox" Display="Dynamic" ForeColor="Red"
                                        ToolTip="Please Enter The Issue/Error Name!"></asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="ErrorNameTextBox"
                                            ErrorMessage="Must Be Between 3 And 25 Letters!" ForeColor="Red"
                                            ValidationExpression="^[\s\S]{3,25}$" Display="Dynamic"></asp:RegularExpressionValidator>
            <!-- End of Validation -->
         </div>
      </div>
      <div class="divRow">
         <div class="divcolum">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="ErrorDescriptionLabel" runat="server" Text="Enter Error/Theme Description"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="ErrorDescriptionTextBox" runat="server" TextMode="MultiLine" Height="128px" Width="512px" CausesValidation="True"></asp:TextBox>
            <!-- ErrorDescriptionTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Text Field Is Empty!"
                                        ControlToValidate="ErrorDescriptionTextBox" Display="Dynamic" ForeColor="Red"
                                        ToolTip="Please Enter The Issue/Error Description!"></asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ErrorDescriptionTextBox"
                                            ErrorMessage="Must Be At Least 3 Letters!" ForeColor="Red"
                                            ValidationExpression="^[\s\S]{3,}$" Display="Dynamic"></asp:RegularExpressionValidator>
            <!-- End of Validation -->
         </div>
      </div>
      <div class="divRow">
         <div class="divcolum">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="ErrorDateLabel" runat="server" Text="Date of Error/Theme Submission"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="ErrorDateTextBox" runat="server" TextMode="Date" Width="256px" CausesValidation="True" MaxLength="10"></asp:TextBox>
            <!-- ErrorDateTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Date Field Is Empty!"
                                        ControlToValidate="ErrorDateTextBox" Display="Dynamic" ForeColor="Red"
                                        ToolTip="Please Select or Enter A Date!" maxLength="10"></asp:RequiredFieldValidator>
            <!-- End of Validation -->
         </div>
      </div>
      <div class="divRow">
         <div class="divcolum">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="ReportingNameLabel" runat="server" Text="Who Reported The Error:"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="ReportingNameTextBox" runat="server" Width="256px" CausesValidation="True"></asp:TextBox>
            <!-- ReportingNameTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Text Field Is Empty!"
                                        ControlToValidate="ReportingNameTextBox" Display="Dynamic" ForeColor="Red"
                                        ToolTip="Please Enter Reporter's Name!"></asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ReportingNameTextBox"
                                            ErrorMessage="Must Be Between 3 and 25 Letters!" ForeColor="Red"
                                            ValidationExpression="^[\s\S]{3,25}$" Display="Dynamic"></asp:RegularExpressionValidator>
            <!-- End of Validation -->
         </div>
      </div>
      <div class="divRow">
         <div class="divcolum">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divcolum">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Button ID="BuildReportButton" runat="server" Text="Submit" OnClick="BuildReport_OnClick" Width="256px" />
         </div>
      </div>
   </div>

</asp:Content>

