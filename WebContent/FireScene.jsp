<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FireScene</title>

    
	    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
	    <link href="<c:url value="/resources/css/round-about.css" />" rel="stylesheet">
	    
	    
	    <script src="<c:url value="/resources/js/bootstrap.js" />"></script>
	    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	    <script src="<c:url value="/resources/js/jquery.js" />"></script>
	    <script src="<c:url value="/resources/js/map.js" />"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">Home</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                   <li>
                        <a href="About.html">About</a>
                    </li>
                    <li>
                        <a href="index.jsp">Services</a>
                    </li>
                    <li>
                        <a href="Contact.jsp">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Introduction Row -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Save Forest
                    <small>Always Here to Help You !!!</small>
                </h1>
                <p>Your are at right place to raise your concern. We appreciate your effort!!</p>
            </div>
        </div>

        <!-- Team Members Row -->
        <div class="row">
<form method = "POST" action = "incident" class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Form Name</legend>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fn">First name</label>  
  <div class="col-md-4">
  <input id="fn" name="fn" type="text" placeholder="first name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Last name</label>  
  <div class="col-md-4">
  <input id="ln" name="ln" type="text" placeholder="last name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input
<div class="form-group">
  <label class="col-md-4 control-label" for="cmpny">Company</label>  
  <div class="col-md-4">
  <input id="cmpny" name="cmpny" type="text" placeholder="company" class="form-control input-md" required="">
    
  </div>
</div>-->

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" type="text" placeholder="email" class="form-control input-md" required="">
    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="add1">Your Location</label>  
   <div class="col-md-4"> <span id="address1"></span></p><p>Latitude: <span id="latitude"></span></p>
    <p>Longitude: <span id="longitude"></span></p></div>
<script type="text/javascript">
        navigator.geolocation.getCurrentPosition(success, error);

        function success(position) {

            var GEOCODING = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=' + position.coords.latitude + '%2C' + position.coords.longitude + '&language=en';

            $.getJSON(GEOCODING).done(function(location) {
                $('#country').html(location.results[0].address_components[5].long_name);
                $('#state').html(location.results[0].address_components[4].long_name);
                $('#city').html(location.results[0].address_components[2].long_name);
                $('#address1').html(location.results[0].formatted_address);
                $('#latitude').html(position.coords.latitude);
                $('#longitude').html(position.coords.longitude);
				$('#lat').html(position.coords.latitude);
                $('#lng').html(position.coords.longitude);
            })

        }

        function error(err) {
            console.log(err)
        }
    </script>
   </div>
   
   
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="add1">Select Other Location</label>  
   <div class="col-md-4">
 <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBRFZzYUirpqHg_7jtrc8BZXubVpntqub8&callback=initMap"></script>
   <h4>Select a location!</h4>
        <p>Click on a location on the map to select it. Drag the marker to change location.</p>
         <style type="text/css">
          #map{ width:500px; height: 300px; }
        </style>
        <!--map div-->
        <div id="map"></div>
        
        <!--our form-->
        <h4>Chosen Location</h4>
		 <div class="col-md-4">
     
            <input type="text" id="lat" name="lat"><br>
            <input type="text" id="lng" name="lng"><br>
			<input type="text" id="address2" name="address2">
       
</div>
  </div>
</div>

<!-- Text input-->


<!-- Text input
<div class="form-group">
  <label class="col-md-4 control-label" for="add2">Address 2</label>  
  <div class="col-md-4">
  <input id="add2" name="add2" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>-->

<!-- Text input
<div class="form-group">
  <label class="col-md-4 control-label" for="city">City</label>  
  <div class="col-md-4">
  <input id="city" name="city" type="text" placeholder="city" class="form-control input-md" required="">
    
  </div>
</div>-->

<!-- Text input
<div class="form-group">
  <label class="col-md-4 control-label" for="zip">Zip Code</label>  
  <div class="col-md-4">
  <input id="zip" name="zip" type="text" placeholder="Zip Code" class="form-control input-md" required="">
    
  </div>
</div>-->

<!-- Text input
<div class="form-group">
  <label class="col-md-4 control-label" for="ctry">Country</label>  
  <div class="col-md-4">
  <input id="ctry" name="ctry" type="text" placeholder="Country" class="form-control input-md" required="">
    
  </div>
</div>-->

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="phone">Phone</label>  
  <div class="col-md-4">
  <input id="phone" name="phone" type="text" placeholder="Phone" class="form-control input-md" required="">
    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="phone">Issue Description</label>  
  <div class="col-md-4">
  <input id="description" name="description" type="text" placeholder="Issue Description" class="form-control input-md" required="">
    
  </div>
</div>
<!-- Multiple Radios (inline) 
<div class="form-group">
  <label class="col-md-4 control-label" for="Training">Would you like to attend our Networking Reception on September 3, 2015?</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="Training-0">
      <input type="radio" name="Training" id="Training-0" value="yes" checked="checked">
      Yes
    </label> 
    <label class="radio-inline" for="Training-1">
      <input type="radio" name="Training" id="Training-1" value="no">
      No
    </label>
  </div>
</div>-->

<!-- Multiple Radios (inline)
<div class="form-group">
  <label class="col-md-4 control-label" for="Networking_Reception">Would you like to attend our Technical Product Update Session on September 4, 2015?</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="Networking_Reception-0">
      <input type="radio" name="Networking_Reception" id="Networking_Reception-0" value="meet_yes" checked="checked">
      Yes
    </label> 
    <label class="radio-inline" for="Networking_Reception-1">
      <input type="radio" name="Networking_Reception" id="Networking_Reception-1" value="meet_no">
      No
    </label>
  </div>
</div>-->

<!-- Select Basic 
<div class="form-group">
  <label class="col-md-4 control-label" for="selectbasic">Select Basic</label>
  <div class="col-md-4">
    <select id="selectbasic" name="selectbasic" class="form-control input-md">
      <option>Option one</option>
      <option>Option two</option>
    </select>
  </div>
</div>-->


<!-- Multiple Radios (inline) 
<div class="form-group">
  <label class="col-md-4 control-label" for="Dinner">Would you like to attend our Networking Dinner on September 4, 2015?</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="Dinner-0">
      <input type="radio" name="Dinner" id="Dinner-0" value="dinner_yes" checked="checked">
      Yes
    </label> 
    <label class="radio-inline" for="Dinner-1">
      <input type="radio" name="Dinner" id="Dinner-1" value="dinner_no">
      No
    </label>
  </div>
</div>-->

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary" type="submit">SUBMIT</button>
	<button id="cancel" name="cancel" class="btn btn-primary" onclick="location.href='index.jsp'">CANCEL</button>
  </div>
</div>

</fieldset>
</form>

        </div>

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2017</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
</body>
</html>
