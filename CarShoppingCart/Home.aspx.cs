using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string IDCAT = Request.QueryString["IDCAT"];
            if(IDCAT != null)
            {
                dlFpage.DataSource = DataAccess.selectQuery("SELECT * FROM PRODUCTS WHERE IDCAT=" + IDCAT);
                dlFpage.DataBind();
            }
        }
    }
}