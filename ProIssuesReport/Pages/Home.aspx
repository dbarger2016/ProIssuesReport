<%@ Page Title="Home" Language="C#" MasterPageFile="~/Pages/ProIssuesMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Pages_Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <!-- Content Section -->
   <div id="PageHeader">
      <h2>PRO Issues Reports Home</h2>
   </div>

   <!-- Simple Navigation -->

    <div id="navContent">
        <ul>
            <li><a href="SubmitIssues.aspx">Submit An Issue</a></li>
            <li><a href="ResponderPortal.aspx">Responder Portal</a></li>
            <li><a href="ViewReport.aspx">View PRO Reports</a></li>
        </ul>
    </div>
</asp:Content>
