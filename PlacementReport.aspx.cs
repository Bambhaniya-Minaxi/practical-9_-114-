using CrystalDecisions.CrystalReports.Engine;
using System;
public partial class PlacementReport : System.Web.UI.Page
{
    protected void btnGenerate_Click(
    object sender, EventArgs e)
    {
        ReportDocument report =
        new ReportDocument();
        report.Load(Server.MapPath(
        "~/Reports/PlacementReport.rpt"));
        CrystalReportViewer1.ReportSource = report;
        CrystalReportViewer1.DataBind();
    }
}
