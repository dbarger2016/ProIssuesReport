<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/ProIssuesMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Pages_Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

   <!-- Home Page Title -->
   <title>Home</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <!-- Content Section -->
   <div id="PageHeader">
      <h2>PRO Issues Reports Home</h2>
   </div>

   <!-- Simple Navigation -->
   <!-- Update this with CSS and Divs! -->
   <table style="width: 20%;" border="1">
      <tr style="height: 100px;">
         <td style="text-align: center"><a href="SubmitIssues.aspx">Submit An Issue</a></td>
      </tr>
      <!--
      <tr style="height: 100px;">
         <td style="text-align: center"><a href="IssuesTable.aspx">View The Issues</a></td>
      </tr> -->
      <tr style="height: 100px;">
         <td style="text-align: center"><a href="ResponderPortal.aspx">Responder Portal</a></td>
      </tr>
      <!--
      <tr style="height: 100px">
         <td style="text-align: center"><a href="BuildProReport.aspx">Build A Report</a></td>
      </tr>
      -->
      <tr style="height: 100px;">
         <td style="text-align: center"><a href="ViewReport.aspx">View PRO Reports</a></td>
      </tr>
   </table>
</asp:Content>
