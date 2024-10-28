<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:if test="${username == '' || username == null}">
	<c:redirect url="http://localhost:8080/fer_jsp/Login.jsp" /> --%>
<%-- <%
	if(session.getAttribute("username") == null) {
		response.sendRedirect("Login.jsp");
	}
%> --%>
	
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FER-DashBoard</title>
<script>
        function submitForm(path){
        	// 1. get the form object
        	var form = document.DashboardForm;
        	
        	
        	// 2 set the path to the form action
        	form.action =path;
        	
        	// 3 submit the form
        	form.submit();
        	
        }
                 // This script only runs after the user logs out
                 
                if (performance.navigation.type === performance.navigation.TYPE_BACK_FORWARD) {
                   window.location.href = "Login.jsp"; // Redirect to login if back button is used after logout
               
                 }
                /* setInterval(function() {
                    window.location.reload();
                }, 5000); // Refresh every 5 seconds */
                
        
   </script>
</head>
<body>
	<form name='DashboardForm' method='post'>
		<table align='center' border='2' height='550px' width='800px'>
			<tr height='75px'>
				<td colspan='2' align='center'>Family Expense Report
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; user: ${username}</td>
			</tr>
			<tr>
				<td width=150px><br>
				<br> <a href="javascript: submitForm('AddExpense.jsp')">AddExpense</a>
					<br>
				<br> <a href="javascript: submitForm('EditExpenseOptions.jsp')">EditExpense</a>
					<br>
				<br> <a
					href="javascript: submitForm ('DeleteExpenseOptions.jsp')">DeleteExpense</a>
					<br>
				<br> <a
					href="javascript: submitForm ('ExpenseReportSelection.jsp')">ExpenseReport</a>
					<br>
				<br> <a href="javascript: submitForm('ResetPassword.jsp')">ResetPassword</a>
					<br>
				<br> <a href="javascript: submitForm('NameInfo.jsp')">Update
						Profile</a> <br>
				<br> <a href="javascript: submitForm('LogOutPost.jsp')">LogOut</a>
					<br>
				<br></td>
				<td align='center'>