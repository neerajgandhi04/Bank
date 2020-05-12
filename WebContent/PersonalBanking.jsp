<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Personal Banking</title>
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

    <div class="container">
      <ul class="nav nav-tabs navbar-center" id="optionList">
        <li class="active"><a href="index.jsp" id="options">Home</a></li>
        <li><a data-toggle="tab" href="#menu1" id="options">Account</a></li>
        <li><a data-toggle="tab" href="#menu2" id="options">Loan</a></li>
        <li><a data-toggle="tab" href="#menu3" id="options">Digital Access</a></li>
      </ul>
      <div class="tab-content" id="menubody">
        <div id="menu1" class="tab-pane fade">
          <img src="images/accounts.jpg" alt="account">
          <h2>Savings Account</h2>
          <p>This Bank offers you the simplest solution for your savings account requirements.</p>
          <p>Choose from our range of savings accounts to select the one that's right for you.</p>
          <h4>General Savings a/c</h4>
          <ul>
            <li>An account for individuals, either singly or jointly, non-trading organizations/ institutions.</li>
            <li>Account with cheque book facility can be opened for a minimum amount of Rs.500/- at Rural/Semi-Urban branches and Rs.1,000/- at Urban/Metro branches.</li>
            <li>Account can be opened even in the name of a minor aged 12, allowing him/her to operate by self, provided he/she presents himself /herself at the bank for each withdrawal.</li>
          </ul>
          <h4>Students Support Savings Scheme</h4>
          <p>Eligibility: Students of recognized Schools from standard I onwards and up to Final Year of Diploma/ Graduation/Post Graduation Colleges/ Professional Course- Entrance Coaching Centres as well as Professional Colleges...</p>
          <p>----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
          <h2>Current Account</h2>
          <p>Choose from our range of current accounts to select the one that's right for you...</p>
          <h4>Classic Current Account</h4>
          <ul>
             <li>For traders, businessmen, corporate bodies, etc. who operate their accounts frequently.</li>
             <li>Minimum amount for opening an account is Rs.5,000/- in Metro branches, Rs 3,000/- in Urban branches, Rs 2,000/- in Semi-urban branches and Rs 1,000/- in Rural branches...</li>
          </ul>
          <h4>Smart Current Account</h4>
          <p>A zero balance Current Account for traders, businessmen, corporate bodies, etc.</p>
          <p>----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
          <h2>Account Creation</h2>
          <p>Click to <a href="ApplicationForm.jsp">create account</a></p>
          <p>If existing user, <a href="#" data-toggle="modal" data-target="#myModal">login</a></p>
          <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-sm">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Login</h4>
                </div>
                <div class="modal-body">
                  <form action="Login" method="post">
                    <div class="form-group">
                      <label for="userName">User Name:</label>
                      <input type="textbox" required class="form-control" name="userName">
                    </div>
                    <div class="form-group">
                      <label for="pwd">Password:</label>
                      <input type="password" required class="form-control" name="pwd">
                    </div>
                    <button type="submit" class="btn btn-default">Login</button>
                    <button type="reset" class="btn btn-default">Cancel</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="menu2" class="tab-pane fade">
          <h1></h1>
          <p></p>
        </div>
        <div id="menu3" class="tab-pane fade">
          <h1></h1>
          <p></p>
        </div>
      </div>
    </div>

    <div class="row" id="images">
        <img src="images/PersonalBanking1.jpg" alt="GST" class="col-md-4">
        <img src="images/PersonalBanking2.jpg" alt="MobileBanking" class="col-md-4">
        <img src="images/PersonalBanking3.jpg" alt="DebitCard Offers" class="col-md-4">
    </div>
</body>
</html>