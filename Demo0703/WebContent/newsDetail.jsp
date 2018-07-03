<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="css/common.css" />
<style type="text/css">
<!--
-->
</style>
</head>

<body>
<!--页面的头部-->
<div id="header">
    <!--页面顶部-->
    <div class="main-top">
        <div class="logo"><a href=""><span>新闻大视野</span></a></div>
        <div class="login-box">
            <label>用户名</label><input type="text" name="uname" /><label>密码</label><input type="text" name="upassword" /><button>登录</button>
        </div>
         <!--导航-->
        <div class="nav">
            <ul class="clearfix">
                <li><a href="#">首页</a></li>
                <li><a href="#">国内</a></li>
                <li><a href="#">国际</a></li>
                <li><a href="#">娱乐</a></li>
                <li><a href="#">军事</a></li>
            </ul>
        </div>
    </div>
    <!--banner-->
    <div class="main-banner"><img src="images/banner.png" /></div>
    <!--搜索横框-->
    <div class="search-box">
        <div class="sl">
            <div class="sr clearfix">
                <span class="left-search clearfix">
                    <label>站内搜索</label><input type="text" name="keyword" value="关键词" /><button class="go-btn"></button>
                </span>
                <span class="right-link">
                    <label>快速链接</label><select><option>-----专题选择-----</option></select><button class="go-btn"></button>
                </span>
            </div>
        </div>    
    </div>
</div>
<!--页面的主体-->
<div id="content" class="main-content clearfix">
	<!--主体的的左边部分-->
    <div class="main-content-left">
        <!--新闻专题分类-->
        <div class="class-box">
            <div class="class-box-header">
                <span class="fr"><a href="#">更多...</a></span>
                <h3>新闻专题</h3>
            </div>
            <div class="class-box-content">
                <ul>
                    <li><a href="#">国内</a></li>
                    <li><a href="#">国际</a></li>
                    <li><a href="#">娱乐</a></li>
                    <li><a href="#">军事</a></li>
                    <li><a href="#">财经</a></li>
                    <li><a href="#">天气</a></li>
                    <li class="clear-bottom-line"><a href="#">科技</a></li>
                </ul>
            </div>
        </div>
        <!--最新新闻-->
        <div class="left-box">
            <div class="left-box-tbg">
                <div class="left-box-bbg">
                    <div class="left-box-header"><h3>最新新闻</h3></div>
                    <div class="left-box-content">
                        <ul>
                            <li><a href="#">詹姆斯26+9+7热火2-1雷霆 詹姆斯快速实战迷踪步2+1</a></li>
                            <li><a href="#">詹姆斯26+9+7热火2-1雷霆 詹姆斯快速实战迷踪步2+1</a></li>
                            <li><a href="#">詹姆斯26+9+7热火2-1雷霆 詹姆斯快速实战迷踪步2+1</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--最新评论-->
        <div class="left-box">
            <div class="left-box-tbg">
                <div class="left-box-bbg">
                    <div class="left-box-header"><h3>最新评论</h3></div>
                    <div class="left-box-content">
                        <ul>
                            <li><a href="#">詹姆斯26+9+7热火2-1雷霆 詹姆斯快速实战迷踪步2+1</a></li>
                            <li><a href="#">詹姆斯26+9+7热火2-1雷霆 詹姆斯快速实战迷踪步2+1</a></li>
                            <li><a href="#">詹姆斯26+9+7热火2-1雷霆 詹姆斯快速实战迷踪步2+1</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--页面主体的右部，包括新闻的列表和评论内容 -->
    <div class="main-content-right">
        <!--各专题的新闻列表-->
        <div class="main-text-box">
            <div class="article-place"><a href="#">新闻中心</a> > <a href="#">国内</a></div>
      		<div class="main-text-box-tbg">
                <div class="main-text-box-bbg">
                    <div class="article-box">
                    <%
                    //单行注释
                    /* 
                    ctrl+shift+/  jsp多行注释
                    sdfsafsafdsaf
                    asdfsafasdf
                    */
                    String title="杰拉德 华莱士选择跳出合同，投身自由市场";
                    String author="admin";
                    String cat="新闻信息";
                    Date date=new Date();
                    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
                    String timeString=sdf.format(date);
                    String summary="我们使用float浮动做了很多其本职工作以外的事情，于是我们会混淆，我们会回看不清float真正的面目。浮动真正的意义在哪里呢？";
                    String content="你我看待事物的方式不同，价值取向也不同，因为我们有着不同的世界观，价值观。这种世界观的差异不仅仅体现在实际的生活中，也反映在代码上。你我看 待代码的方式，或者说是代码在我们情感层面的位置是不一样的，我这里说的是情感层面，与逻辑无关，与算法无关（虽然算法受情感影响）。这种看待代码的方式 是我们在不断学习与工作的过程中积累出来的，是在潜意识层面逐渐积累起来的，一切悄然而至，不知不觉。当我们积累到一定阶段后，会突然发现，关于代码，我 们已经形成了自己的世界观和属于自己的准则。回到我刚提到的\"情感层面\"，这个词也可以用\"感性思维\"来代替。通常而言，程序-代码属于很理性很逻辑的东 西，与感性-情感这类词搭不上边，但是CSS例外。CSS也属于代码范畴，而且是一种伟大的代码，其有别于C，JAVA之类程序语言——没有算法，没有复 杂的逻辑。于是，CSS有了先天的优势可以渗入一些感性的情感化的东西。正如我上面提及的，大多数情况下，这种渗入是无意识的（除非有人直接表露——就像 我现在所做的），并且是个体差异明显的（因为是专属于自己的情感化的东西）。弗洛伊德将人格划分为无意识、前意识和意识，我发现代码的情感化思维形成正是 走的从无意识到前意识到意识的路线，所以我个人认为：情感化的代码也属于人格的一部分。于是，有了\"CSS-情感化代码-人格\"这一微妙的关系。"
                          +"我不清楚他人是如何看待CSS的，CSS的这些属性在他们心中是个什么东西，他们到底赋予了多少自身的情感（或人格或品性或特质等）在这些代码身 上，他们是否已经意识到这些CSS属性身上正一点一点地融入他们情感化的一些东西。但我清楚自己，在这些CSS的属性身上添加了很多个人的色彩，这种情感 化的东西可以说让我更好的理解CSS，我想这不难理解，举个例子：假设你将每个CSS属性看做是你的孩子，每个孩子有着不同的性格，随着学习你会挖掘到更 多的一些性格，这就好比母亲看着自己的孩子一点点长大，到了一定的程度就会把自己的孩子的性格摸得一清二楚，管教也就从容了。当然，我并没有对CSS所有 的属性都有很清晰的情感化的理解，我用CSS才几年啊，我要学的还有很多。但是，对于CSS中常用的float属性，我还是有些感觉的，这也是本文的主旨 所在。本文将会从我的一些感性的认识的角度讲解CSS float属性。所以，这里，你会看到别样的技术文章";
                    %>
                    <!--ctrl+shift+/ html  -->
                    	<!--新闻的标题-->
                        <h1><%=title%><%-- <% out.print(title); %> --%></h1>
                        <div class="source-bar">发布者：<%=author %> 分类：<%=cat %> 更新时间：<%=timeString %></div>
                        <div class="article-content">
                            <span class="article-summary"><b>摘要：</b><%=summary %></span>
                            <%=content %>
                        </div>
                        <div class="comment">
                            <dl>
                                <dt class="comment-top">
                                    <span class="fr">2011-09-25 13:33:55</span>
                                    <b>1楼</b> <b>水上漂</b>
                                </dt>
                                <dd class="comment-body">
                                    <span class="fr"><a href="#">支持</a>（0） <a href="#">回复</a>（0）</span>
                                    我支持华莱士去拉大斯
                                </dd>
                            </dl>
                            <dl>
                                <dt class="comment-top">
                                    <span class="fr">2011-09-25 13:33:55</span>
                                    <b>2楼</b> <b>拉娜</b>
                                </dt>
                                <dd class="comment-body">
                                    <span class="fr"><a href="#">支持</a>（1） <a href="#">回复</a>（0）</span>
                                    还是早点退役吧
                                </dd>
                            </dl>
                        </div>
                        <div class="comment-form">
                            <div class="comment-form-header">
                                <span>用户：Landodo</span>
                                <h3>发表评论：</h3>
                            </div>
                            <div class="comment-form-content">
                                <textarea class="comment-textarea"></textarea>
                                <button type="submit" class="comment-btn">评论</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--//-->
        
    </div>
</div>
<!--页面底部-->
<div class="main-footer-box">
    24小时客户服务热线：010-68988888 常见问题解答 新闻热线：010-627488888<br />
    文明办网文明上网举报电话：010-627488888 举报邮箱：jubao@bj-aptech.com.cn<br />
    Coyright&copy;1999-2007 News China gov,All Right Reserved.<br />
    新闻中心版权所有
</div>
</body>
</html>