<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>
					  <table align='center'border='2'>
					  <tr>
								<td colspan='2' align='center' >
								    Expense Report
								    </td>
							</tr>
							<tr>
								<td>Expensetype</td>
								   <td>
								      <input type='text' name='type'>
							      </td>
							</tr>
							<tr>
								<td>FromDate</td>
								   <td>
								      <input type='text' name='fromDate'>
							      </td>
							</tr>
							<tr>
								<td>ToDate</td>
								   <td>
								      <input type='text' name='toDate'>
							      </td>
							</tr>
							
							
							<tr>
								<td colspan='2' align='center'>
								
								<input type='submit' value ='Expense Report' onclick="javascript: submitForm('ExpenseReportPost.jsp')">
								</td>
							</tr>
				
	
	
			</table>
			<jsp:include page="Layout/Footer.jsp"></jsp:include>
			 