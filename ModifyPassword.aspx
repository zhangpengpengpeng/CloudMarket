﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyPassword.aspx.cs" Inherits="ModifyPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0" />

    <title>个人中心</title>

    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <link href="css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="home/css/personal.css" rel="stylesheet" type="text/css" />
    <link href="home/css/vipstyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/amazeui.js"></script>
    
    <script>
        function getl(id) {
            //遍历整个dom对象
            return document.getElementById(id);
        }
        function doModifyPwd() {

            var new_Pwd = getl("newpassword").value;
            //var strGoodsValue = getl("goodsvalue").value;
            //var strPhonePwdRepeat = getl("phonepasswordRepeat").value;
            if (new_Pwd == '') {

                alert("请输入新密码！！");
                getl("newpassword").focus();

            } else {

                getl("modifyPwdForm1").submit();

            }


        }


    </script>
    
    
    

</head>

<body>
<!--头 -->
    

<header>
    <article>
        <div class="mt-logo">
            <!--顶部导航条 -->
            <div class="am-container header">
                <ul class="message-r">
                    <div class="topMessage home">
                        <div class="menu-hd">
                            <a id="userlogin" href="Index.aspx" target="_top" class="h"><%=getUserName()%></a></div>
                    </div>
                    <div class="topMessage home">

                            <div class="menu-hd" id="userlogout">
                                <a  runat="server"  class="h" onserverclick="logout">注销登录</a>
                            </div>
                  
                    </div>
                    <div class="topMessage my-shangcheng">
                        <div class="menu-hd MyShangcheng"><a href="Index.aspx" target="_top">云购首页</a></div>
                    </div>
                    <div class="topMessage my-shangcheng">
                        <div class="menu-hd MyShangcheng"><a href="PersonalShopCar.aspx" target="_top">购物车</a></div>
                    </div>

                    <div class="topMessage my-shangcheng">
                        <div class="menu-hd MyShangcheng"><a href="PersonalPage/PurchaseRecord/AllPurchaseRecord.aspx" target="_top">我的二手云购</a></div>
                    </div>
                    <div class="topMessage mini-cart">
                        <div class="menu-hd"><a id="mc-menu-hd" href="About.aspx" target="_top"><span>帮助</span><strong id="J_MiniCartNum" class="h"></strong></a></div>
                    </div>
                </ul>
            </div>

            <!--悬浮搜索框-->

            <div class="nav white">
                <div class="logoBig">
                    <li><img src="home/images/logo4.png" /></li>
                </div>

            </div>

            <div class="clear"></div>
        </div>
			
    </article>
</header>
<div class="nav-table">
    <div class="long-title"><span class="all-goods">二手云购</span></div>
    <div class="nav-cont">
        <ul>
            <li class="index"><a href="Index.aspx">首页</a></li>
            <li class="qc"><a href="Zuixinjiexiao.aspx">最新揭晓</a></li>
            <li class="qc"><a href="Rementuijian.aspx">热门推荐</a></li>
            <li class="qc"><a href="Xinpinshangjia.aspx">新品上架</a></li>
        </ul>
    </div>
</div>
<b class="line"></b>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">
            <div class="wrap-left">
                <div class="wrap-list">

                    <!--订单 -->
                    <div class="m-order">
                        <div class="s-bar">
                            <i class="s-icon"></i>修改密码
                        </div>
                        <form runat="server"  method="POST"  id="modifyPwdForm1">
                        
                        <div class="s-content">
                            <div class="info-main">
                                    <div class="am-form-group">
                                        <div >
                                            <label  class="am-form-label" style="float: left">
                                                *手机号:</label></div> 
                                        <div style="float: left; margin-left:10px;">
                                            <input  disabled  style="width: 200%; height:30px;"   type="text"  placeholder="<%=getUserName() %>" />

                                        </div>
                                    </div>
                                    <br />
                                    <br />
                                    <div class="am-form-group" style="padding-top: 20px;" >
                                        <div style="float: left">
                                            <label   class="am-form-label">
                                                *修改密码:</label></div>
                                        <div class="am-form-content" style="float: left; margin-left:10px;">
                                            <input id="newpassword"  style="width: 200%; height:30px;" type="text"  placeholder="请您输入新密码"  runat="server" />
                                        </div>

                                    </div>
                                    <br />

                                    <div class="info-btn" style="margin-left:110px; padding-top:20px; padding-bottom: 50px;"  >
                                        <input type="button"  value="确认修改" class="am-btn am-btn-danger anniu" onclick="doModifyPwd()" />
                                    </div>
                      
                            </div>
                        </div>

                        
                        </form>
                        

                    </div>
                    



                </div>
            </div>
            <div class="clear"></div>
     				


        </div>
        <!--底部-->
        <div class="footer">
            <div class="footer-hd">
                <p>
                    <a href="About.aspx">二手云购</a>
                    <b>|</b>
                    <a href="Index.aspx">云购首页</a>
                </p>
            </div>
            <div class="footer-bd">
                <p>
                    <a href="About.aspx">关于二手云购</a>

                    <em>2017-2018 CloudMarket.com 版权所有. </em>
                </p>
            </div>
        </div>

    </div>

    <aside class="menu">
        <ul>
            <li class="person active">
                <a href="PersonalPage/PurchaseRecord/AllPurchaseRecord.aspx"><i class="am-icon-user"></i>个人中心</a>
            </li>

            <li class="person">
                <p><i class="am-icon-balance-scale"></i><a href="PersonalPage/PurchaseRecord/AllPurchaseRecord.aspx">云购记录</a></p>
                <ul>
                    <li><a href="PersonalPage/PurchaseRecord/JinxingPurchase.aspx">进行中</a></li>
                    <li> <a href="PersonalPage/PurchaseRecord/AnnouncedPurchase.aspx">已揭晓</a></li>
                </ul>
            </li>

            <li class="person">
                <p><i class="am-icon-tags"></i><a href="PublishGood.aspx">已发布的商品</a></p>
                <ul>
                    <li> <a href="PersonalPage/ReleaseGoods/Addgood.aspx">添加商品</a></li>
                    <li> <a href="PersonalPage/ReleaseGoods/TradeSuccessGoods.aspx">已成功交易的商品</a></li>	
                    <li> <a href="PersonalPage/ReleaseGoods/ProcessingGoods.aspx">进行中的商品</a></li>													
                </ul>
            </li>
                    
            <li class="person">
                <p><i class="am-icon-newspaper-o"></i>个人资料</p>
                <ul>
                    <li> <a href="ModifyPassword.aspx">个人信息</a></li>
                </ul>
            </li>
            <li class="person">
                <p><i class="am-icon-qq"></i>在线客服</p>
                <ul>
                    <li> <a href="PersonalPage/OnlineService/SuggestPage.aspx">意见反馈</a></li>							
                </ul>
            </li>
        </ul>

    </aside>
</div>
    
    

</body>

</html>

