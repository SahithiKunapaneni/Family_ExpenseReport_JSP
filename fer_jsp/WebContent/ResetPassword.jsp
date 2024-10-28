<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>

				      <table align='center'border='2'>
							<tr>
								<td colspan='2' align='center' >
								    Update Password
								    </td>
							</tr>
							<tr>
								<td>Current Password</td>
								   <td>
								      <input type='text' name='currentPassword'>
							      </td>
							</tr>
							<tr>
								<td>
								  New Password
								 </td>
								<td>
								<input type='password' name='newPassword'>
								</td>
							</tr>
							<tr>
								<td>
								  Confirm New Password
								 </td>
								<td>
								<input type='password' name='confirmNewPassword'>
								</td>
							</tr>
							<tr>
								<td colspan='2' align='center'>
								    
								   &nbsp;&nbsp;&nbsp;
								   <input type='submit' value ='Update' onclick="javascript: submitForm('ResetPasswordPost.jsp')">
								</td>
							</tr>


		</table>
		
				<jsp:include page="Layout/Footer.jsp"></jsp:include>
			