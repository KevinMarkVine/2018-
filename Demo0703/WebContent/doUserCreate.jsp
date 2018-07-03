<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//针对post请求。需要设置setCharacterEncoding
	//针对get请求:
	//方式一:new String(s.getBytes("iso-8859-1"),"utf-8")
	//方式二:<Connector port="8080" protocol="HTTP/1.1"
	//connectionTimeout="20000"
	// redirectPort="8443" URIEncoding="UTF-8"/>
	//设置:URIEncoding="UTF-8"

	//设置字符集--针对post请求
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");

	//得到用户名
	//设置字符集--针对get请求
	//String userName=new String(request.getParameter("username").getBytes("iso-8859-1"),"utf-8");
	String userName = request.getParameter("username");
	if (userName.equals("admin")) {
		//注册失败，重新注册
		request.setAttribute("mess", "注册失败，重新注册");
		//转发-服务器端行为
		request.getRequestDispatcher("userCreate.jsp").forward(request, response);
	} else {
		//添加Cookie
		Cookie cookie = new Cookie("username", userName);
		//设置cookie的有效期，以秒为单位
		cookie.setMaxAge(60 * 2);
		response.addCookie(cookie);
		//注册成功，跳到index.jsp页面
		session.setAttribute("username", userName);
		//设置session的有效期秒为单位
		session.setMaxInactiveInterval(60);
		//重定向--重新定位一个新的URL请求index.jsp
		//客户端行为
		response.sendRedirect("index.jsp");

	}
	//String pwd=new String(request.getParameter("password").getBytes("iso-8859-1"),"utf-8");
	String pwd = request.getParameter("password");
%>
用户名为:<%=userName%><br>
密码为:<%=pwd%>