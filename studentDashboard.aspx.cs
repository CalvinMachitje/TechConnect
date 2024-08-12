using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechConnect
{
	public partial class studentDashborad : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btncheckStatus_Click(object sender, EventArgs e)
		{
			Response.Redirect("checkStatus.aspx");
		}

		protected void btneditProfile_Click(object sender, EventArgs e)
		{
			Response.Redirect("updateProfile.aspx");
		}
	}
}