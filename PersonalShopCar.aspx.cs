﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PersonalShopCar : System.Web.UI.Page
{
    public string username;
    public List<ShopCar> shopcars = null;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('亲爱的，请先登录！');location.href='Login.aspx';</script>");
        }
        shopcars = getShopCarList();
        //updateShopCar();
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

    //返回购物车列表


    public List<ShopCar> getShopCarList()
    {

        int userid;
        userid = UserService.getUserIdByPhone(getUserName());
        if (userid == 0)
        {
            userid = UserService.getUserIdByEmail(getUserName());
        }

        //List<ShopCar> shopcars = new List<ShopCar>();

        shopcars = ShopCarService.getAllShopCarByUserId(userid);
        return shopcars;

    }



}