using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductDetail : System.Web.UI.Page
{
    Cart myCart;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string id = Request.QueryString["ID"];
            if(id!=null)
            {
                dlProduct.DataSource = DataAccess.selectQuery("SELECT * FROM  Products WHERE ID=" + id);
                dlProduct.DataBind();
            }
        }
    }

    protected void btnAddToCartd_Click(object sender, EventArgs e)
    {
        if(Session["myCart"] == null)
        {
            myCart = new Cart();
            Session["myCart"] = myCart;
        }
        string id = Request.QueryString["ID"];
        myCart = (Cart)Session["myCart"];
        DataTable dt = DataAccess.selectQuery("SELECT * FROM Products WHERE ID= " + id);
        DataRow row = dt.Rows[0];
        myCart.Insert(new CartItem(Int32.Parse(id), 
        row["NAME"].ToString(), 
        row["IMAGE"].ToString(), 
        row["DESCRIPTION"].ToString(), 
        Double.Parse(row["PRICE"].ToString()), 
        1)
        );
    }
}