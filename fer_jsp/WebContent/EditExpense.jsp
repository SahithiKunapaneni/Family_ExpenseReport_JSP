<%@page import="com.rs.fer.bean.Expense"%>
<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>

<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>

<%! FERService ferService = new FERServiceImpl(); %>


<%

		// 1.get the input
		int expenseId = Integer.parseInt(request.getParameter("expenseId"));
		
		session.setAttribute("expenseId",expenseId);
		
		// 2 call the service by passing the input to execute the bussiness logic
		Expense expense = ferService.getExpense(expenseId);

		// 3 Show the status
		if(expense ==null) {
			out.println("No expense found to edit ....!");
		}
		else {
		out.println("<table align='center'border='2'>");
		out.println("<tr>");
		out.println("<td colspan='2' align='center' >");
		out.println("EditExpense");
		out.println(" </td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>Expensetype</td>");
		out.println("  <td>");
		out.println("<input type='text' name='type' value='"+expense.getType()+"'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Date</td>");
		out.println("  <td>");
		out.println("<input type='text' name='date' value='"+expense.getDate()+"'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Price</td>");
		out.println("  <td>");
		out.println("<input type='text' name='price' value='"+expense.getPrice()+"'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Number Of Items</td>");
		out.println("  <td>");
		out.println("<input type='text' name='numberOfItems' value='"+expense.getNumberOfItems()+"'>");
		out.println("</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>Total</td>");
		out.println("  <td>");
		out.println("<input type='text' name='total' value='"+expense.getTotal()+"'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>By Whom</td>");
		out.println("  <td>");
		out.println("<input type='text' name='byWhom' value='"+expense.getByWhom()+"'>");
		out.println("</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td colspan='2' align='center' >");
		out.println("<input type='submit' value ='Edit Expense' onclick=\"javascript: submitForm('EditExpensePost.jsp')\">");
		out.println(" </td>");
		out.println("</tr>");
		out.println("</table>");
		}

%>
<jsp:include page="Layout/Footer.jsp"></jsp:include>