using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        UpdateGrid();
    }

    private void UpdateGrid()
    {
        try
        {
            using (var db = new FBDataContext())
            {
                var allfeedback = from f in db.FeedBackTs
                                  select f;

                GridView1.DataSource = allfeedback;
                GridView1.DataBind();
            }
        }
        catch { }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            using (var db = new FBDataContext())
            {
                FeedBackT f = new FeedBackT()
                {

                    Name = fname.Text,
                    Email = email.Text,
                    Number = Convert.ToInt64(number.Text),
                    Message = texta.Text
                };

                db.FeedBackTs.InsertOnSubmit(f);
                db.SubmitChanges();
                fname.Text = email.Text = texta.Text = number.Text = "";
            }
        }
        catch { }

        UpdateGrid();
    }
}