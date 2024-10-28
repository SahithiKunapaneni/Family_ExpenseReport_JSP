<%@page import="com.rs.fer.bean.User"%>
<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>


<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>


<%!FERService ferService = new FERServiceImpl();%>

<%

		// Body
		// 1.get the input
          User user = (User)session.getAttribute("user");		
		// 2 .Update name field values into user object
      user.setFirstName(request.getParameter("firstName"));
      
      user.setMiddleName(request.getParameter("middleName"));
      user.setLastName(request.getParameter("lastName"));
		// 3 Show the status
		out.println("<table align='center'border='2'>");
		out.println("<tr>");
		out.println("<td colspan='2' align='center' >");
		out.println("Contact Info");
		out.println(" </td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>Email</td>");
		out.println("  <td>");
		out.println("<input type='text' name='email' value='"+user.getEmail()+"'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Mobile</td>");
		out.println("  <td>");
		out.println("<input type='text' name='mobile' value='"+user.getMobile()+"'>");
		out.println("</td>");
		out.println("</tr>");
		
		
		out.println("<tr>");
		out.println("<td colspan='2' align='center' >");
		out.println("<input type='submit' value ='Next' onclick=\"javascript: submitForm('AddressInfo.jsp')\">");
		out.println(" </td>");
		out.println("</tr>");
		out.println("</table>");
	


%>

<jsp:include page="Layout/Footer.jsp"></jsp:include>