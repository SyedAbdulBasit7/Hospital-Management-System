using System;

using System.Collections.Generic;

using System.Globalization;

using System.Linq;

using System.Threading;

using System.Web;

using System.Web.UI;

using System.Web.UI.WebControls;



public partial class Main : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            if (Session["SelectedLang"] != null)
            {
                try
                {

                    DropDownList1.SelectedValue = Session["SelectedLang"].ToString();
                }
                catch
                {
                    Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture
    (DropDownList1.SelectedValue);

                    Thread.CurrentThread.CurrentUICulture = new CultureInfo
    (DropDownList1.SelectedValue);
                }

            }
            /*  else
              {

                  Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture
  (DropDownList1.SelectedValue);

                  Thread.CurrentThread.CurrentUICulture = new CultureInfo
  (DropDownList1.SelectedValue);

              }*/

        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedValue == "ur")
        {

            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("ur");

            Thread.CurrentThread.CurrentUICulture = new CultureInfo("ur");

            Session["SelectedLang"] = DropDownList1.SelectedValue;

            Server.Transfer(Request.Path);

        }
        else if (DropDownList1.SelectedValue == "zh")
        {

            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("zh");

            Thread.CurrentThread.CurrentUICulture = new CultureInfo("zh");

            Session["SelectedLang"] = DropDownList1.SelectedValue;

            Server.Transfer(Request.Path);

        }

        else
        {

            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("en");

            Thread.CurrentThread.CurrentUICulture = new CultureInfo("en");

            Session["SelectedLang"] = DropDownList1.SelectedValue;

            Server.Transfer(Request.Path);

        }

    }

}