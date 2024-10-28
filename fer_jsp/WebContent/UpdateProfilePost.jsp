<%@page import="com.rs.fer.bean.User"%>
<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>

<%! FERService ferService= new FERServiceImpl();  %> 

<%


		// 1.get the input

		User user =(User) session.getAttribute("user");

		// 2 call the service by passing the input to execute the bussiness logic

		boolean isUserUpdate = ferService.updateUser(user);

		// 3 Show the status
		if (isUserUpdate) {
			session.setAttribute("status", "User Profile Updates  sucessfuly......");
		} else {
			session.setAttribute("status", "User Profile Updates  failed......");
		}
		
		
%>
<jsp:include page="Dashboard.jsp"></jsp:include>