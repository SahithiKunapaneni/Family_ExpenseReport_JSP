<%@page import="com.rs.fer.bean.User"%>
<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>


<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>


<%!FERService ferService = new FERServiceImpl();%>

<%
//Header & leftFrame
		
		// 1.get the input
		int userId = (Integer) session.getAttribute("userId");
		
		// 2 call the service by passing the input to execute the bussiness logic
      User user =ferService.getUser(userId);
      session.setAttribute("user",user);
		// 3 Show the status
		out.println("<table align='center'border='2'>");
		out.println("<tr>");
		out.println("<td colspan='2' align='center' >");
		out.println("Name Info");
		out.println(" </td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>First Name</td>");
		out.println("  <td>");
		out.println("<input type='text' name='firstName' value='"+user.getFirstName()+"'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Middle Name</td>");
		out.println("  <td>");
		out.println("<input type='text' name='middleName' value='"+user.getMiddleName()+"'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Last Name</td>");
		out.println("  <td>");
		out.println("<input type='text' name='lastName' value='"+user.getLastName()+"'>");
		out.println("</td>");
		out.println("</tr>");
		
		
		out.println("<tr>");
		out.println("<td colspan='2' align='center' >");
		out.println("<input type='submit' value ='Next' onclick=\"javascript: submitForm('ContactInfo.jsp')\">");
		out.println(" </td>");
		out.println("</tr>");
		out.println("</table>");
		


%>

<jsp:include page="Layout/Footer.jsp"></jsp:include>