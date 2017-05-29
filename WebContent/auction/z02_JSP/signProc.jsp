<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="z01_database.AuctionUserDAO"
	import="z02_vo.AuctionUserVO"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	String proc = request.getParameter("proc");
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	String userName = null;
	if (proc != null && proc.equals("login")) {
		AuctionUserVO sch = new AuctionUserVO();
		sch.setEmail(email);
		sch.setPassword(pwd);
		
		AuctionUserDAO userDAO = new AuctionUserDAO();
		AuctionUserVO userVO = userDAO.infoUser(sch);
		if (userVO != null) {
			userName = userVO.getUserName();
			session.setAttribute("userIn", userVO);
		}
	}

	 //###
	boolean isLogout = false;
%>



<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>♪SignProc</title>
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
<body>

</body>
</html>