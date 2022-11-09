using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _111_1QZ3
{
    public partial class Test : System.Web.UI.Page
    {
        string[] s_City = new string[3] { "台北市", "新北市", "台中市" };
        string[,] s_Area = new string[3, 3] {
            {"中正區", "文山區", "大安區"},
            {"淡水區", "石碇區", "土城區"},
            {"西屯區", "北屯區", "東區"}
        };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int ct = 0; ct < s_City.Length; ct++)
                {
                    ListItem ol = new ListItem();
                    ol.Text = s_City[ct];
                    ol.Value = s_City[ct];
                    dpl_City.Items.Add(ol);
                }
                mt_GenSecondList();
            }
        }
        protected void mt_GenSecondList()
        {
            int ind = dpl_City.SelectedIndex;
            dpl_Area.Items.Clear();
            for (int ct = 0; ct < s_Area.GetLength(1); ct++)
            {
                ListItem ol = new ListItem();
                ol.Text = ol.Value = s_Area[ind, ct];
                dpl_Area.Items.Add(ol);
            }
        }


        protected void dpl_City_SelectedIndexChanged(object sender, EventArgs e)
        {
            mt_GenSecondList();
        }

        protected void rbl_Phone_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbl_Phone.SelectedIndex == 2)
            {
                txt_Phone.Visible = false;
            }
            else
            {
                txt_Phone.Visible = true;
            }
        }
    }
}