﻿<%@ Page Title="Submit An Issue" Language="C#" MasterPageFile="~/Pages/ProIssuesMasterPage.master" AutoEventWireup="true" CodeFile="SubmitIssues.aspx.cs" Inherits="Pages_SubmitIssues" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="PageHeader">
        <h2>Submit A PRO Issue/Error</h2>
    </div>

    <!--Start Div Table For Input Controls -->
    <div id="content" class="divTable">
        <div class="divRow">
            <div class="divColumn">
                <label id="lblIssueName">Name iof the Issue/Error:</label>
            </div>
        </div>
        <div class="divRow">
            <div class="divColumn">
                <asp:textbox id="IssueNameTextBox" runat="server" width="256px" causesvalidation="True"></asp:textbox>
                <!-- IssueNameTextBox Validation -->
                <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" errormessage="Text Field Is Empty!"
                    controltovalidate="IssueNameTextBox" display="Dynamic" forecolor="Red"
                    tooltip="Please Enter An Issue/Error Here"></asp:requiredfieldvalidator>

                <asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" controltovalidate="IssueNameTextBox"
                    errormessage="Must Be Between 3 And 25 Letters!" forecolor="Red"
                    validationexpression="^[\s\S]{3,25}$" display="Dynamic"></asp:regularexpressionvalidator>
                <!-- End of Validation -->
            </div>
        </div>
        <div class="divRow">
            <div class="divColumn">&nbsp</div>
        </div>
        <div class="divRow">
            <div class="divColumn">
                <label id="lblIssueDescription">Description/Details of the Issue/Error:</label>
            </div>
        </div>
        <div class="divRow">
            <div class="divColumn">
                <asp:textbox id="IssueDescriptionTextBox" runat="server" textmode="MultiLine"
                    width="512px" height="128px" maxlength="300" causesvalidation="True"></asp:textbox>
                <!-- IssueDescriptionTextBox Validation -->
                <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" errormessage="Text Field Is Empty!"
                    controltovalidate="IssueDescriptionTextBox" display="Dynamic" forecolor="Red"
                    tooltip="Please Enter Details Of Your Issue/Error"></asp:requiredfieldvalidator>

                <asp:regularexpressionvalidator id="RegularExpressionValidator2" runat="server" controltovalidate="IssueDescriptionTextBox"
                    errormessage="Must Be At Least 3 Letters In Length!" forecolor="Red"
                    validationexpression="^[\s\S]{3,}$" display="Dynamic"></asp:regularexpressionvalidator>
                <!-- End of Validation -->
            </div>
        </div>
        <div class="divRow">
            <div class="divcolum">&nbsp</div>
        </div>
        <div class="divRow">
            <div class="divColumn">
                <label id="lblReporterName">Enter Reporter Name:</label>
            </div>
        </div>
        <div class="divRow">
            <div class="divColumn">
                <asp:textbox id="ReporterNameTextBox" runat="server" width="256px"
                    maxlength="50" causesvalidation="True"></asp:textbox>
                <!-- ReporterNameTextBox Validation -->
                <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" errormessage="Text Field Is Empty!"
                    controltovalidate="ReporterNameTextBox" display="Dynamic" forecolor="Red"
                    tooltip="Please Enter The Reporter's Name"></asp:requiredfieldvalidator>

                <asp:regularexpressionvalidator id="RegularExpressionValidator3" runat="server" controltovalidate="ReporterNameTextBox"
                    errormessage="Must Be Between 3 And 25 Letters!" forecolor="Red"
                    validationexpression="^[\s\S]{3,25}$" display="Dynamic"></asp:regularexpressionvalidator>
                <!-- End of Validation -->
            </div>
        </div>
        <div class="divRow">
            <div class="divColumn">&nbsp</div>
        </div>
        <div class="divRow">
            <div class="divColumn">
                <label id="lblIsseDate">Date Reported:</label>
            </div>
        </div>
        <div class="divRow">
            <div class="divColumn">
                <asp:textbox id="DateReportedTextBox" runat="server" textmode="Date" width="256px"
                    backcolor="White" causesvalidation="True"></asp:textbox>
                <!-- DateReportedTextBox Validation -->
                <asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" errormessage="Date Field Is Empty!"
                    controltovalidate="DateReportedTextBox" display="Dynamic" forecolor="Red"
                    tooltip="Please Select or Enter A Date!"></asp:requiredfieldvalidator>
                <!-- End of Validation -->
            </div>
        </div>
        <div class="divRow">
            <div class="divColumn">&nbsp</div>
        </div>
        <div class="divRow">
            <div class="divColumn">
                <label id="lblIssueStatus">Current Status:</label>
            </div>
        </div>
        <div class="divRow">
            <div class="divColumn">
                <asp:textbox id="IssueStatusTextBox" runat="server" text="OPEN" readonly="true" ontextchanged="IssueStatusTextBox_TextChanged"></asp:textbox>
            </div>
        </div>
        <div class="divRow">
            <div class="divColumn">&nbsp</div>
        </div>
        <div class="divRow">
            <div class="divColumn">
                <asp:button id="IssueSubmit" runat="server" text="Submit Issue" onclick="IssueSubmit_Click" width="256px" />
            </div>
        </div>
    </div>

</asp:Content>

