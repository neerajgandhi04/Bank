<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Application Form</title>
  <link rel="stylesheet" href="stylesheet/style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
  <div class="navbar-left" id="bankLogo">
    <img src="images/logo.png" alt="bank logo">
      <p>Bank Name</p>
  </div>

  <div><img src="images/application-form.jpg" alt="application-form"></div>
  <div class="Form">
  <h2>Application Form</h2>
  <form action="Register" method="post">
  	
    <div class="form-group">
          
      <label for="name">Name:</label>
      <input type="text" required class="form-control" placeholder="Enter name" name="name" value=${name}>
 	  <p style="color:red">${error['name'] }</p>
 	  
      <label for="dob">Date-of-Birth:</label>
      <input type="text" required class="form-control" placeholder="yyyy-mm-dd" name="dob" value=${dob}>
      <p style="color:red">${error['dob'] }</p>
      
      <label for="age">Age:</label>
      <input type="number" required class="form-control" name="age" value=${age}>
  	  <p style="color:red">${error['age'] }</p>
  	  
      <label for="address">Address:</label>
      <input type="text" required class="form-control" placeholder="Enter address" name="address" value=${address}>
  	  <p style="color:red">${error['address'] }</p>
  	  
      <label for="email">Email:</label>
      <input type="email" required class="form-control" placeholder="Enter email" name="email" value=${email}>
  	  <p style="color:red">${error['email'] }</p>
  	    	  
      <label for="phoneNo">Phone No:</label>
      <input type="number" required class="form-control" placeholder="Enter Phone No" name="phoneNo" value=${phoneNo}>
  	  <p style="color:red">${error['phoneNo'] }</p>
  	  
  	  <label for="panNo">Pan-Card No:</label>
      <input type="text" required class="form-control" placeholder="Enter Pan-Card No" name="panNo" value=${panNo}>
  	  <p style="color:red">${error['panNo'] }</p>
  	  
  	  <label for="accountType">Account Type:</label>
      <label class="radio-inline" value="1"><input type="radio" name="accountType">Savings Account</label>
	  <label class="radio-inline" value="2"><input type="radio" name="accountType">Current Account</label>
  	  <p style="color:red">${error['accountType'] }</p>
  	  
  	  <label for="userName">UserName:</label>
      <input type="text" required class="form-control" placeholder="Enter UserName" name="userName" value=${userName}>
  	  <p style="color:red">${error['userName'] }</p>
  	  
  	  <label for="password">Password:</label>
      <input type="password" required class="form-control" placeholder="Enter Password" name="password" value=${password}>
  	  <p style="color:red">${error['password'] }</p>
  	  
      <button type="submit" class="btn btn-default">Submit</button>
      <button type="reset" class="btn btn-default">Cancel</button>
  </div>
  </form>
</div>
</body>
</html>