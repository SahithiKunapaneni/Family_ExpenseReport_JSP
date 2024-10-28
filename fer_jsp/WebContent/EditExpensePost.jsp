<%@page import="com.rs.fer.bean.Expense"%>
<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>


<%! FERService ferService= new FERServiceImpl();  %> 


<%

		
		// 1.get the input
		
		Expense expense = new Expense();
		
		expense.setType(request.getParameter("type"));
		expense.setDate(request.getParameter("date"));
		expense.setPrice(Float.parseFloat(request.getParameter("price")));
		expense.setNumberOfItems(Integer.parseInt(request.getParameter("numberOfItems")));
		expense.setTotal(Float.parseFloat(request.getParameter("total")));
		expense.setByWhom(request.getParameter("byWhom"));
		
		int expenseId = (Integer) session.getAttribute("expenseId");
		expense.setId(expenseId);
		
		// 2 call the service by passing the input to execute the bussiness logic
		
		boolean isEditExpense = ferService.editExpense(expense);
		
		// 3 Show the status
		if (isEditExpense) {
		    session.setAttribute("status","Expense Updated sucessfuly......");
		} else {
			
			 session.setAttribute("status","Expense Update is failed ......");
		}
		
	
%>
<jsp:include page="Dashboard.jsp"></jsp:include>