<%@page import="com.rs.fer.bean.Expense"%>
<%@page import="java.util.List"%>
<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>


<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>


<%! FERService ferService= new FERServiceImpl();  %> 

<%
		
		// 1.get the input
		 int userId =(Integer) session.getAttribute("userId");
		// 2 call the service by passing the input to execute the bussiness logic
		 List<Expense> expenses = ferService.getExpenseOptions(userId);
		 
		
		// 3 Show the status
		if(expenses.isEmpty()) {
			out.println("No expense found to delete ....!");
		}
		else
		{
			out.println("Expense ID:");
			out.println("&nbsp;");
			out.println("<select name ='expenseId'>");
			out.println(" <option  value=''>Please select Expense ID</option>");
			
			int value =0;
			String text =null;
			for(Expense expense : expenses) {
				value =expense.getId();
				text = value+ "--"+expense.getType()+"--"+expense.getDate()+"--"+expense.getTotal()+"--"+expense.getByWhom();
				
			out.println(" <option value ='"+value +"'>"+text +"</option>");
			}
			out.println("</select>");
			out.println(" &nbsp;&nbsp;&nbsp;");
			out.println("<input type='submit' value ='Next' onclick=\"javascript: submitForm('DeleteExpensePost.jsp')\">");
			
		}

%>
<jsp:include page="Layout/Footer.jsp"></jsp:include>