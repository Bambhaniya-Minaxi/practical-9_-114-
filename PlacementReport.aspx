<%@ Page Language="C#" AutoEventWireup="true"
 CodeBehind="PlacementReport.aspx.cs"
 Inherits="PlacementReport" %>
<form id="form1" runat="server">
<h2>Generate Placement Report</h2>
<asp:Button ID="btnGenerate"
 runat="server"
 Text="Generate Report"
 OnClick="btnGenerate_Click" />
<CR:CrystalReportViewer
 ID="CrystalReportViewer1"runat="server"
 AutoDataBind="true" />
</form>
