<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>


<%!FERService ferService = new FERServiceImpl();%>

<%

		// 1.get the input

		int userId = (Integer) session.getAttribute("userId");
		String newPassword = request.getParameter("newPassword");
		String currentPassword = request.getParameter("currentPassword");
		String confirmPassword = request.getParameter("confirmNewPassword");
		// 2 call the service by passing the input to execute the bussiness logic

		boolean isResetPassword = ferService.resetPassword(userId, newPassword, currentPassword);

		// 3 Show the status
		if (isResetPassword) {
			session.setAttribute("status","Password  Updated sucessfuly......");
		} else {
			session.setAttribute("status","Password Update is failed");
		}

		
%>
<jsp:include page="Dashboard.jsp"></jsp:include>