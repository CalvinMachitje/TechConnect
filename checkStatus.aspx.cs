using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechConnect
{
	public partial class checkStatus : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
	}
========
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

		{
			Response.Redirect("checkStatus.aspx");
		}

		protected void btneditProfile_Click(object sender, EventArgs e)
		{
			Response.Redirect("updateProfile.aspx");
		}
	}
>>>>>>>> dadc3736eadb9317ade84224b46b6541dd9ab7cf:forgotPassword.aspx.cs
}