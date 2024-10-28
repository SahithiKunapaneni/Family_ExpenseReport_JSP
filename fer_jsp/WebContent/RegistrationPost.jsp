
<%@page import="com.rs.fer.bean.User"%>
<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<%! FERService ferService = new FERServiceImpl();   %>

  <%
	        //1.get the input
	
			User user = new User();
			user.setFirstName(request.getParameter("FirstName"));
			user.setMiddleName(request.getParameter("MiddleName"));
			user.setLastName(request.getParameter("lastName"));
			user.setEmail(request.getParameter("email"));
			user.setUsername(request.getParameter("userName"));
			user.setPassword(request.getParameter("password"));
			user.setMobile(request.getParameter("mobile"));
	
			// 2 call the service by passing the input to execute the bussiness logic
	
			
			boolean isRegister = ferService.registration(user);
	      String path =null;
			// 3 Show the status
			if (isRegister) {
				out.println("User registration is done sucessfuly......");
				path = "Login.jsp";
			} else {
				out.println("User registration is failed");
				path ="Registration.jsp";
			}
			
  %>
  <jsp:include page="<%=path %>"></jsp:include>