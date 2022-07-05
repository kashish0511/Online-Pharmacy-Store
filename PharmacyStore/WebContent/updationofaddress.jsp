<%@page import="com.nttdatafinalcase.dao.UserDao"%>
<%@page import="com.nttdatafinalcase.daoimpl.UserDaoImpl"%>
<%@page import="com.nttdatafinalcase.dto.Order"%>
<%@page import="com.nttdatafinalcase.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	int oid = Integer.parseInt(request.getParameter("orderid"));
	String address = request.getParameter("address");
	UserDao udao = new UserDaoImpl();
	Order o = new Order();
	o.setOrderid(oid);
	o.setAddress(address);
	
	if(udao.updateAddress(o))
	{
		out.print("success");
	}
	else
	{
		out.print("failure");	
	}
%>