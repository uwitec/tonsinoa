﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TonSinOA.Utility;

namespace TonSinOA.FileManager
{
    public partial class FileList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strTypeID = StringHelper.GetRequest("TypeID");// Request.QueryString["TypeID"] + string.Empty;
            string strSuperTypeID = StringHelper.GetRequest("SuperID");// Request.QueryString["SuperID"] + string.Empty;
            string strTypeName = StringHelper.GetRequest("name");// Request.QueryString["SuperID"] + string.Empty;
            spTypeName.InnerHtml = strTypeName;
            if (!IsPostBack)
            {
                Bind(strSuperTypeID);
            }

            
        }

        private void Bind(string strTypeID)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/FileManager/File.xml"));
            DataRow[] drs = null;
            if (strTypeID != "")
            {
                 drs = ds.Tables[0].Select("ParentID='" + strTypeID + "'");
            }
            else
            {
                drs = ds.Tables[0].Select("ParentID='0'");
            }
            DataTable dt = ds.Tables[0].Clone();
            foreach (DataRow dr in drs)
            {
                dt.Rows.Add(dr.ItemArray);
            }
            dt.AcceptChanges();
            this.dgDocView.DataSource = dt;
            this.dgDocView.DataBind();
        }
    }
}