<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <title>Simple Login with CodeIgniter</title>
</head>
<body>
   <h1>Simple Login with CodeIgniter</h1>
   <?php echo validation_errors(); ?>
   <?php echo form_open('verifylogin'); ?>
     <label for="username">Username:</label>
     <input type="text" size="20" id="username" name="username"/>
     <br/>
     <label for="password">Password:</label>
     <input type="password" size="20" id="password" name="password"/>
     <br/>
     <input type="submit" value="Login"/>
   </form>
   <sub>http://www.iluv2code.com/login-with-codeigniter-php.html</sub>
</body>
</html>