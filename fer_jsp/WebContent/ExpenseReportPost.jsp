<%@page import="com.rs.fer.bean.Expense"%>
<%@page import="java.util.List"%>
<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>

<<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>
<%!FERService ferService = new FERServiceImpl();%>


<%

		// 1.get the input
		int userId = Integer.parseInt(session.getAttribute("userId").toString());
		
		String expenseType = request.getParameter("type");
		String fromDate = request.getParameter("fromDate");
		String toDate = request.getParameter("toDate");
		
		// 2 call the service by passing the input to execute the bussiness logic
		
		List<Expense> expenses = ferService.getExpenseReport(userId, expenseType, fromDate, toDate);
		
		if (expenses.isEmpty()) {
			out.println("No Expense found ....");
		} else {
			out.println("<table align='center'border='2' width='600px'>");
			out.println("<tr>");
			out.println("	<td colspan='10' align='center'  width='600px'>");
			out.println("	    Expense Report");
			out.println("	</td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("	<td  width='100px'>Expensetype</td>");
			out.println("		<td width='100px'>Date</td>");
		
			out.println("		<td width='100px'>Price</td>");
			out.println("		<td width='100px'>NoOfItems</td>");
			out.println("		<td width='100px'>Total</td>");
			out.println("		<td width='100px'>ByWhom</td>");
			out.println("</tr>");
			for (Expense expense : expenses) {
				out.println("<tr>");
				out.println("  <td width='100px'>");
				out.println(expense.getType());
				out.println("</td>");
				out.println("  <td width='100px'>");
				out.println(expense.getDate());
				out.println("</td>");
				out.println("  <td width='100px'>");
				out.println(expense.getPrice());
				out.println("</td>");
				out.println("  <td width='100px'>");
				out.println(expense.getNumberOfItems());
				out.println("</td>");
				out.println("  <td width='100px'>");
				out.println(expense.getTotal());
				out.println("</td>");
				out.println("  <td  width='100px'>");
				out.println(expense.getByWhom());
				out.println("</td>");
		
			}
			out.println("</table>");
		}
		

%>
<jsp:include page="Layout/Footer.jsp"></jsp:include>