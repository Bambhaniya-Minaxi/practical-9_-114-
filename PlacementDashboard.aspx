<%@ Page Language="C#" AutoEventWireup="true"
 CodeBehind="PlacementDashboard.aspx.cs"
 Inherits="PlacementDashboard" %>
<!DOCTYPE html>
<html>
<head runat="server">
 <title>Placement Dashboard</title>
 <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="sidebar">
 <h2>Placement Cell</h2>
 <a href="PlacementDashboard.aspx">Dashboard</a>
 <a href="Students.aspx">Students</a>
 <a href="Companies.aspx">Companies</a>
 <a href="Placements.aspx">Placements</a>
 <a href="PlacementReport.aspx">Reports</a>
</div>
<div class="main">
 <h1>Placement Dashboard</h1>
 <div class="cards">
 <div>Total Students<br /><b>50</b></div>
 <div>Total Companies<br /><b>12</b></div>
 <div>Total Placements<br /><b>32</b></div>
 <div>Placement Rate<br /><b>64%</b></div>
 </div>
 <h2>Recent Placements</h2>
 <asp:GridView ID="gvStudents" runat="server"
 AutoGenerateColumns="False"
 CssClass="table">
 <Columns>
 <asp:BoundField DataField="StudentID"
 HeaderText="Student ID" />
 <asp:BoundField DataField="Name"
     HeaderText="Name" />
 <asp:BoundField DataField="Branch"
 HeaderText="Branch" />
 <asp:BoundField DataField="Company"
 HeaderText="Company" />
 <asp:BoundField DataField="Package"
 HeaderText="Package (LPA)" />
 <asp:BoundField DataField="PlacementDate"
 HeaderText="Placement Date" />
 </Columns>
 </asp:GridView>
</div>
</form>
</body>
</html>
