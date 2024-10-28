<%@page import="com.rs.fer.bean.Address"%>
<%@page import="com.rs.fer.bean.User"%>
<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>


<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>


<%!FERService ferService = new FERServiceImpl();%>

<%


		// 1.get the input
		User user = (User) session.getAttribute("user");
		// 2 .Update Address field values into user object

		Address address = user.getAddress();
		address.setLineone(request.getParameter("lineOne"));
		address.setLinetwo(request.getParameter("lineTwo"));
		address.setCity(request.getParameter("city"));
		address.setState(request.getParameter("state"));
		address.setPinCode(request.getParameter("pinCode"));
		address.setCountry(request.getParameter("country"));

		// 3 Show the status
		out.println("<table align='center'border='2'>");
		out.println("<tr>");
		out.println("<td colspan='2' align='center' >");
		out.println("Review");
		out.println(" </td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>First Name</td>");
		out.println("  <td>");
		out.println("<input type='text' name='firstName' value='" + user.getFirstName() + "'disabled ='true'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Middle Name</td>");
		out.println("  <td>");
		out.println("<input type='text' name='middleName' value='" + user.getMiddleName() + "'disabled ='true'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Last Name</td>");
		out.println("  <td>");
		out.println("<input type='text' name='lastName' value='" + user.getLastName() + "'disabled ='true'>");
		out.println("</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Email</td>");
		out.println("  <td>");
		out.println("<input type='text' name='email' value='" + user.getEmail() + "'disabled ='true'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Mobile</td>");
		out.println("  <td>");
		out.println("<input type='text' name='mobile' value='" + user.getMobile() + "'disabled ='true'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Line1</td>");
		out.println("  <td>");
		out.println("<input type='text' name='lineOne' value='" + address.getLineone() + "'disabled ='true'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Line2</td>");
		out.println("  <td>");
		out.println("<input type='text' name='lineTwo' value='" + address.getLinetwo() + "'disabled ='true'>");
		out.println("</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>City</td>");
		out.println("  <td>");
		out.println("<input type='text' name='city' value='" + address.getCity() + "'disabled ='true'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>State</td>");
		out.println("  <td>");
		out.println("<input type='text' name='state' value='" + address.getState() + "'disabled ='true'>");
		out.println("</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>PinCode</td>");
		out.println("  <td>");
		out.println("<input type='text' name='pinCode' value='" + address.getPinCode() + "'disabled ='true'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>County</td>");
		out.println("  <td>");
		out.println("<input type='text' name='country' value='" + address.getCountry() + "'disabled ='true'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td colspan='2' align='center' >");
		out.println(
				"<input type='submit' value ='Update Profile' onclick=\"javascript: submitForm('UpdateProfilePost.jsp')\">");
		out.println(" </td>");
		out.println("</tr>");
		out.println("</table>");
	


%>

<jsp:include page="Layout/Footer.jsp"></jsp:include>