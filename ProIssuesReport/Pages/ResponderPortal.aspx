<%@ Page Title="Responder Portal" Language="C#" MasterPageFile="~/Pages/ProIssuesMasterPage.master" AutoEventWireup="true" CodeFile="ResponderPortal.aspx.cs" Inherits="Pages_ResponderPortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   <div id="PageHeader">
      <h2>Responder Portal</h2>
   </div>

   <!--Start Div Table For Input Controls -->
   <div id="content" class="divTable">
      <asp:Panel ID="Panel1" runat="server" Height="40%" Width="50%">
         <div class="divRow">
            <div class="divColumn">
               <asp:DropDownList ID="IssueSelectDD" ClientIDMode="Static" runat="server" AutoPostBack="true" Height="21px"
                  Width="203px" OnSelectedIndexChanged="IssueList_Click" AppendDataBoundItems="true">
                 
               </asp:DropDownList>
            </div>
         </div>
         <div class="divRow">
            <div class="divColumn">&nbsp</div>
         </div>
         <div class="divRow">
            <div class="divColumn">

               <asp:GridView ID="GridViewDrop" runat="server" AutoGenerateColumns="false" AllowSorting="true" AllowPaging="true" EnableViewState="true">
                  <Columns>
                     <asp:BoundField DataField="IssueId" HeaderText="Issue ID" SortExpression="IssueId" />
                     <asp:BoundField DataField="IssueName" HeaderText="Issue Name" SortExpression="IssueName" />
                     <asp:BoundField DataField="IssueDate" HeaderText="Date" SortExpression="IssueDate" DataFormatString="{0:d}" />
                     <asp:BoundField DataField="IssueStatus" HeaderText="Issue Status" SortExpression="IssueStatus" />
                  </Columns>
               </asp:GridView>

            </div>
         </div>
         <div class="divRow">
            <div class="divColumn">&nbsp</div>
         </div>
         <div class="divRow">
            <div class="divColumn">&nbsp</div>
         </div>
      </asp:Panel>

      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="ResponderNameLabel" runat="server" Text="Responder Name:"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="ResponderNameTextBox" runat="server" CausesValidation="true" Width="256px"></asp:TextBox>
            <!-- IssueNameTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Text Field Is Empty!"
               ControlToValidate="ResponderNameTextBox" Display="Dynamic" ForeColor="Red"
               ToolTip="Please Enter The Responder Name!"></asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ResponderNameTextBox"
               ErrorMessage="Must Be Between 3 And 25 Letters!" ForeColor="Red"
               ValidationExpression="^[\s\S]{3,25}$" Display="Dynamic"></asp:RegularExpressionValidator>
            <!-- End of Validation -->
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="ResponderDetailsLabel" runat="server" Text="Responder Details:"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="ResponderDetailsTextBox" runat="server" CausesValidation="true" TextMode="MultiLine"
               Height="128px" Width="512px"></asp:TextBox>
            <!-- IssueNameTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Text Field Is Empty!"
               ControlToValidate="ResponderDetailsTextBox" Display="Dynamic" ForeColor="Red"
               ToolTip="Please Enter The Responder Details!"></asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ResponderDetailsTextBox"
               ErrorMessage="Must Be Between At Least 3 Letters!" ForeColor="Red"
               ValidationExpression="^[\s\S]{3,}$" Display="Dynamic"></asp:RegularExpressionValidator>
            <!-- End of Validation -->
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:Label ID="ReponderTimeLabel" runat="server" Text="Response Time (In Hours):"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <asp:TextBox ID="ResponderTimeTextBox" runat="server" CausesValidation="true" TextMode="Number" Width="128px"></asp:TextBox>
            <!-- IssueNameTextBox Validation -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Text Field Is Empty!"
               ControlToValidate="ResponderTimeTextBox" Display="Dynamic" ForeColor="Red"
               ToolTip="Please Enter The Response Time!"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please Enter Response Time!" ControlToValidate="ResponderTimeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="1000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <!-- End of Validation -->
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
              <asp:Label ID="IssueIdFKlabel" runat="server" Text="Current Issue ID:"></asp:Label>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">
             <asp:TextBox ID="IssueIdFKTextBox" runat="server"></asp:TextBox>
         </div>
      </div>
      <div class="divRow">
         <div class="divColumn">&nbsp</div>
      </div>
      <div class="divRow">
         <div class="divColumn">
            <!--<asp:DropDownList ID="DropDownList1" runat="server" >  
               <asp:ListItem ID="OpenLB" runat="server" DataValueField="1" DataTextField="OpenLB" Text="OPEN"></asp:ListItem>
               <asp:ListItem ID="InProgressLB" runat="server" DataValueField="2" DataTextField="InProgressLB" Text="IN PROGRESS"></asp:ListItem>
               <asp:ListItem ID="ClosedLB" runat="server" DataValueField="3" DataTextField="ClosedLB" Text="CLOSED"></asp:ListItem>
               <asp:ListItem ID="CompleteLB" runat="server" DataValueField="4" DataTextField="CompleteLB" Text="COMPLETE"></asp:ListItem>
            </asp:DropDownList>  -->
         </div>
      </div>
       <div class="divRow">
         <div class="divColumn">&nbsp</div>
      </div>
       <div class="divRow">
         <div class="divColumn">&nbsp</div>
      </div>
      <div class="divRow">
          <div class="divColumn">
              <asp:button id="ResponderSubmit_Button" runat="server" text="Submit" onclick="ResponderSubmit_Click" />
          </div>
      </div>
   </div>
</asp:Content>

