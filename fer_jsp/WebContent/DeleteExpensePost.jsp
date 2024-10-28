<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>

<%! FERService ferService= new FERServiceImpl();  %> 

<%

		// 1.get the input

		int expenseId = Integer.parseInt(request.getParameter("expenseId"));

		// 2 call the service by passing the input to execute the bussiness logic

		boolean isDeleteExpense = ferService.deleteExpense(expenseId);

		// 3 Show the status
		if (isDeleteExpense) {
			session.setAttribute("status","Expense Deleted  sucessfuly......" );
		} else {
			session.setAttribute("status","Expense Deleted  is fail......" );
		}
		


%>
<jsp:include page="Dashboard.jsp"></jsp:include>