<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>

<%! FERService ferService =new FERServiceImpl();%>

   <%   
		//1.get the input
		
		String username = request.getParameter("userName");
		String password = request.getParameter("password");
		// 2 call the service by passing the input to execute the bussiness logic
		
		int userId = ferService.login(username, password);
		 String path =null;
		// 3 Show the status
		if (userId >0) {
			
			session.setAttribute("username",username);
			session.setAttribute("userId",userId);
			
			// Header & leftFrame
			
			// Body
			session.setAttribute("status","Welcome to the user :" + username+".....!");
			 path ="Dashboard.jsp";
			
			// footer 
		} else {
			out.println("Incorrect username/password please try again");
					
			path = "Login.jsp";
		}
		
	        
		
    %>
    <jsp:include page="<%= path %>"></jsp:include>