<!doctype html>
<html>
	<body>
		<h2>Costumer Login</h2>
		<p>
			Please enter your username and password to log on to your website<br/>
			If you do not have an account, you can get on for free <a href="register.php">Regitering</a>
		</p>
		<form method="post" action = "<?php echo $_SERVER['REQUEST_URI']; ?>">
			<table>
				<tbody>
					<tr>
						<td>Username</td>
						<td><input type="textbox" name="tbUsername" id="tbUsername"></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="tbPassword" id="tbPassword"></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="checkbox" name="cbRemeberMe" id="cbRemeberMe" value="yes">Remember Me</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" name="btnSubmit" id="btnSubmit" value="Log In"></td>
					</tr>

				</tbody>
			</table>
		</form>
	</body>
</html>