<%@page import="com.rs.fer.bean.Expense"%>
<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>


<%! FERService ferService = new FERServiceImpl();  %>

<%

// Header & leftFrame
		
		// 1.get the input

		Expense expense = new Expense();
		expense.setType(request.getParameter("type"));
		expense.setDate(request.getParameter("date"));
		expense.setPrice(Float.parseFloat(request.getParameter("price")));
		expense.setNumberOfItems(Integer.parseInt(request.getParameter("numberOfItems")));
		expense.setTotal(Float.parseFloat(request.getParameter("total")));
		expense.setByWhom(request.getParameter("byWhom"));
		int userId =Integer.parseInt( session.getAttribute("userId").toString());
		expense.setUserId(userId);

		// 2 call the service by passing the input to execute the bussiness logic

		boolean isAddExpense = ferService.addExpense(expense);

		// 3 Show the status
		if (isAddExpense) {
			session.setAttribute("status", "Expense Added sucessfuly......");
		} else {
			session.setAttribute("status", "Expense Added is faailed......");
		}
		

%>
<jsp:include page="Dashboard.jsp"></jsp:include>