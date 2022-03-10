<?php
	if(isset($_SESSION) == true){
		session_start();
	}
	$has_Cookkie_DisplayName = isset($_COOKIE["COOKIE_DISPLAYNAME"]);
	if($has_Cookkie_DisplayName == true){
		$_SESSION["SESS_DISPLAYNAME"] = $_COOKIE["COOKIE_DISPLAYNAME"];
	}
	if(isset($_SESSION["SEES_DISPLAYNAME"])){
		header("Location: index.php");
	}
	$isLoginButtonClicked = isset($_POST["btnSubmit"]);
	if($isLoginButtonClicked == true){
		$userName = $_POST["tbUsername"];
		$password = $_POST["tbPassword"];
		
		if($userName == "david" && $password == "password"){
			$_SESSION["SESS_DISPLAYNAME"] = "David";
			
			$rememberMeChecked = isset($_POST["cbRememberMe"]);
			if($rememberMeChecked == true){
				$expiryTime = time() + 60 * 60 * 24 * 30;
				setcookie("COOKIE_DISPLAYNAME", "David", $expiryTime);
			}
			header("Location: index.php");
		}
		else{
			echo "<span style='color:red'>Wrong Username / password </span>";
		}
	}
?>
<!doctype html>
<html>
	<body>
		<h2>Home</h2>
		<?php
			$has_Cookkie_DisplayName = isset($_COOKIE["COOKIE_Displayname"]);
			if($has_Cookkie_DisplayName == true){
				$_cookie_DisplayName = $_COOKIE["COOKIE_Displayname"];
				echo "Welcome <strong>" . $session_DisplayName . "!</strong> [<a href='logout.php'>Logout</a>]";
			}
			else{
				if(isset($_SESSION) == false){
					session_start();
				}
				$has_Session_DisplayName = isset($_SESSION["SESS_DISPLAYNAME"]);
				if($has_Session_DisplayName == true){
					$session_DisplayName = $_SESSION["SESS_DISPLAYNAME"];
					echo "Welcome <strong>" . $session_DisplayName . "!</strong> [<a href='logout.php'>Logout</a>]";
				}
				else{
					echo "<a href='login.php'>Login</a>";
				}
			}
		?>
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