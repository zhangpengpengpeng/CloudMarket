﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{

    public string username;

    public List<Good> goods = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        //goods = GoodService.getSearchGoods();
      goods =  getSearch();
    }
    public string getUserName()
    {
        username = (string)Session["username"];
        return username;

    }

    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='Index.aspx';</script>");
    }

    public List<Good> getSearch()
    {
        string searchText = Request.QueryString["content"].ToString();

        List<Good> searchGoods = new List<Good>();
        searchGoods = GoodService.getSearchGoods(searchText);
        return searchGoods;
    }




}