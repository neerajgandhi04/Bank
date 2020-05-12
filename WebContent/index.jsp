<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Home</title>
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
  <div class="navbar-center" id="optionList">
    <a href="" id="options">Home</a>
    <a href="PersonalBanking.jsp" id="options">Personal Banking</a>
    <a href="#" id="options">About Us</a>
    <a href="#" id="options">Contact Us</a>
  </div>

  <div id="myCarousel" class="carousel slide">
    <ol class="carousel-indicators">
      <li data-target = "#myCarousel" data-slide-to = "0" class="active"></li>
      <li data-target = "#myCarousel" data-slide-to = "1"></li>
      <li data-target = "#myCarousel" data-slide-to = "2"></li>
      <li data-target = "#myCarousel" data-slide-to = "3"></li>
    </ol>

    <div class="carousel-inner">
      <div class="item active">
        <img src="images/Offers.jpg" alt="offers" class="img-responsive">
        <div class="carousel-caption col-md-12 left" id="cCaption">
          <p>Special Festive Offers!!</p>
          <p>Over 2000 prizes to be won.</p>
        </div>
      </div>
      <div class="item">
        <img src="images/GoDigital.jpg" alt="goDigital" class="img-responsive">
        <div class="carousel-caption col-md-12 left" id="cCaption">
          <p>Go Digital!</p>
          <p>Save your time.</p>
        </div>
      </div>
      <div class="item">
        <img src="images/BusinessLoans.jpg" alt="BusinessLoan" class="img-responsive">
        <div class="carousel-caption col-md-12 left" id="cCaption">
          <p>A Perfect blend of traditional and</p>
          <p>new technology.</p>
        </div>
      </div>
      <div class="item">
        <img src="images/Loan.jpg" alt="Loan" class="img-responsive">
        <div class="carousel-caption col-md-12 left" id="cCaption">
          <p>Make your dreams come true!!</p>
          <p>Get the loans with low interests.</p>
        </div>
      </div>
    </div>

    <a class="carousel-control left" href="#myCarousel" data-slide="prev">
      <span class="icon-prev"></span>
    </a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next">
      <span class="icon-next"></span>
    </a>


  </div>
</body>
</html>