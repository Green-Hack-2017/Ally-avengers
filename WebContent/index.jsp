<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Save Forest</title>

    <!-- Bootstrap Core CSS -->
   <!--  <link href="../resources/theme/css/bootstrap.css" rel="stylesheet" type="text/css"  /> -->
	    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
	    <link href="<c:url value="/resources/css/round-about.css" />" rel="stylesheet">
	    
	    
	    <script src="<c:url value="/resources/js/bootstrap.js" />"></script>
	    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	    <script src="<c:url value="/resources/js/jquery.js" />"></script>
	    <%-- <spring:url value="/resources/css/bootstrap.css" var="bootStrapCss1"></spring:url>
	    <spring:url value="resources/css/round-about.css" var="roundAboutCss"></spring:url>
    <spring:url value="resources/js/bootstrap.min.js" var="bootStrapJs"></spring:url>
    <spring:url value="resources/js/jquery.js" var="jqueryJs"></spring:url>
    <spring:url value="/resources/css/bootstrap.css" var="bootStrapCss"></spring:url> --%>
<%--    <link href="${bootStrapCss}" rel="stylesheet">
   <link href="${roundAboutCss}" rel="stylesheet">
   
   <script src="${bootStrapJs }" /></script>
    <script src="${jqueryJs}"/></script> --%>

  

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
<!--                     <li> -->
<!--                         <a href="incidents">About</a> -->
<!--                     </li> -->
					<li>
                        <a href="About.jsp">About</a>
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
            <div class="col-lg-12">
                <h2 class="page-header">Services</h2>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
			<a  href="IllegalLogging.jsp" >
                <img class="img-circle img-responsive img-center" src="http://localhost:8080/ForestIssueTracker/resources/images/logging.jpg"  alt="" >
				
                <h3>Illegal Logging
				  
                </h3>
				</a>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
			<a  href="AnimalInDanger.jsp" >
                <img class="img-circle img-responsive img-center" src="http://localhost:8080/ForestIssueTracker/resources/images/animal.jpg"  alt="">
				
                <h3>Animal in Danger
                </h3>
				</a>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
			 <a  href="FireScene.jsp" >
                <img class="img-circle img-responsive img-center" src="http://localhost:8080/ForestIssueTracker/resources/images/firescene.jpg"  alt="">
				
                <h3>Fire scene
				                  
                </h3></a>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
			
            <div class="col-lg-4 col-sm-6 text-center">
			 <a  href="Farmer.jsp" >
                <img class="img-circle img-responsive img-center" src="http://localhost:8080/ForestIssueTracker/resources/images/farmer.jpg" alt="">
                <h3>Farmer issue
                </h3></a>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
			
            
            <div class="col-lg-4 col-sm-6 text-center">
			 <a  href="Emmergency.jsp" >
                <img class="img-circle img-responsive img-center" src="http://localhost:8080/ForestIssueTracker/resources/images/alarm.jpg" alt="">
                <h3>Emergency Alarm
                </h3></a>
                <p>raise this alarm if you find something which urgent need resolution</p>
            </div>
            		
            <!--<div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/200x200" alt="">
                <h3>John Smith
                    <small>Job Title</small>
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/200x200" alt="">
                <h3>John Smith
                    <small>Job Title</small>
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>-->
        </div>

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Ally Avengers 2017</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

 

    <!-- Bootstrap Core JavaScript -->
    
    

</body>
</html>