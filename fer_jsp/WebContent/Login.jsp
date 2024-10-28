<html>
<head>
<title>FER-Login</title>
</head>
<!-- <script type="text/javascript">
        setInterval(function() {
            window.location.reload();
        }, 5000); // Refresh every 5 seconds
    </script> -->
<body>
	<form action ='LoginPost.jsp' method ='post'>
		<table align='center'border='2'>
			<tr>
				<td colspan='2' align='center' >
				    Login
				    </td>
			</tr>
			<tr>
				<td>Username</td>
				   <td>
				      <input type='text' name='userName'>
			      </td>
			</tr>
			<tr>
				<td>
				  Password
				 </td>
				<td>
				<input type='password' name='password'>
				</td>
			</tr>
			<tr>
				<td colspan='2' align='center'>
				   <input type='submit' value='Login'> 
				   &nbsp;&nbsp;&nbsp;
				   <a href='Registration.jsp'>Registration</a>
				</td>
			</tr>


		</table>

	</form>
</body>
</html>