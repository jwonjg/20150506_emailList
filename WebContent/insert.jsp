<%@page import="com.sds.icto.emaillist.dao.EmailListDao"%>
<%@page import="com.sds.icto.emaillist.vo.EmailListVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	EmailListVo vo = new EmailListVo();
	vo.setFirstName(request.getParameter("fn"));
	vo.setLastName(request.getParameter("ln"));
	vo.setEmail(request.getParameter("email"));
	
	EmailListDao dao = new EmailListDao();
	dao.insert(vo);
	
	response.sendRedirect("/20150506_emailList");
	
%>