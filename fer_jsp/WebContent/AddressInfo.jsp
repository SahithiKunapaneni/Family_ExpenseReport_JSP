<%@page import="com.rs.fer.bean.Address"%>
<%@page import="com.rs.fer.bean.User"%>
<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>


<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>


<%!FERService ferService = new FERServiceImpl();%>

<%


		
		// 1.get the input
		User user = (User) session.getAttribute("user");
		// 2 .Update name field values into user object
		user.setEmail(request.getParameter("email"));
		user.setMobile(request.getParameter("mobile"));

		Address address = user.getAddress();
		// 3 Show the status
		out.println("<table align='center'border='2'>");
		out.println("<tr>");
		out.println("<td colspan='2' align='center' >");
		out.println("Address Info");
		out.println(" </td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Line1</td>");
		out.println("  <td>");
		out.println("<input type='text' name='lineOne' value='" + address.getLineone() + "'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Line2</td>");
		out.println("  <td>");
		out.println("<input type='text' name='lineTwo' value='" + address.getLinetwo() + "'>");
		out.println("</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>City</td>");
		out.println("  <td>");
		out.println("<input type='text' name='city' value='" + address.getCity() + "'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>State</td>");
		out.println("  <td>");
		out.println("<input type='text' name='state' value='" + address.getState() + "'>");
		out.println("</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>PinCode</td>");
		out.println("  <td>");
		out.println("<input type='text' name='pinCode' value='" + address.getPinCode() + "'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>County</td>");
		out.println("  <td>");
		out.println("<input type='text' name='country' value='" + address.getCountry() + "'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td colspan='2' align='center' >");
		out.println("<input type='submit' value ='Review' onclick=\"javascript: submitForm('Review.jsp')\">");
		out.println(" </td>");
		out.println("</tr>");
		out.println("</table>");

%>

<jsp:include page="Layout/Footer.jsp"></jsp:include>