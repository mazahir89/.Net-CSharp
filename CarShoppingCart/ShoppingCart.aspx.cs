using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ShoppingCart : System.Web.UI.Page
{
    Cart myCart;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["myCart"] == null)
        {
            Session["myCart"] = new Cart();
        }
        myCart = (Cart)Session["myCart"];
        if (!IsPostBack)
        {
            FillData();
        }
    }

    private void FillData()
    {
        gvShoppingCart.DataSource = myCart.Items;
        gvShoppingCart.DataBind();
        if(myCart.Items.Count ==0)
        {
            lblGrandTotal.Visible = false;
        }
        else
        {
            lblGrandTotal.Text = string.Format("Grand Total = {0,19:C}", myCart.GrandTotal);
            lblGrandTotal.Visible = true;
        }
    }
    protected void gvShoppingCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvShoppingCart.EditIndex = -1;
        FillData();
    }

    protected void gvShoppingCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        myCart.Delete(e.RowIndex);
        FillData();
    }

    protected void gvShoppingCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtQuantity = (TextBox)gvShoppingCart.Rows[e.RowIndex].Cells[3].Controls[0];
        int quantity = Int32.Parse(txtQuantity.Text);
        myCart.Update(e.RowIndex, quantity);
        gvShoppingCart.EditIndex = -1;
        FillData();
    }

    protected void gvShoppingCart_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvShoppingCart.EditIndex = e.NewEditIndex;
        FillData();
    }

    protected void gvShoppingCart_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}