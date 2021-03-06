<!DOCTYPE HTML>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Geneious &mdash; Heritability DNA Analysis </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">


	<link href='https://fonts.googleapis.com/css?family=Raleway:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="resources/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="resources/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="resources/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="resources/css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="resources/css/style.css">

	<!-- Modernizr JS -->
	<script src="resources/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	
	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			<div class="row">
				<div class="col-xs-2">
					<div id="gtco-logo"><a href="resources/WEB-INF/index.jsp">Geneious</a></div>
				</div>
				<div class="col-xs-10 text-right menu-1">
					<ul>
						<li class="active"><a href="resources/WEB-INF/index.jsp">Home</a></li>
						<li><a href="resources/WEB-INF/index.jsp">About</a></li>
						<li><a href="resources/WEB-INF/jsp/contact.html">Contact</a></li>
					</ul>
				</div>
			</div>
			
		</div>
	</nav>

	<header id="gtco-header" class="gtco-cover" role="banner" style="background-image:url(resources/images/dna.jpg);">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<div class="display-t">
						<div class="display-tc animate-box" data-animate-effect="fadeIn">
							<h2>Upload Parent Files</h2>
							<div class="well">
								<form:form action="fileUpload.html" modelAttribute="uploadForm" enctype="multipart/form-data">
									<c:forEach var="error" items="${uploadForm.errors}">
										<div class="alert alert-danger">
		  									<strong>&#9888;</strong> ${error}
										</div>
									</c:forEach>
	  								<div class="form-group">
	    								<label for="file1">Father's DNA</label>
	   									<form:input path="file1" type="file" class="form-control" id="file1" placeholder="Enter Father's DNA"></form:input>
	  								</div>
	 								<div class="form-group">
	    								<label for="file2">Mother's DNA</label>
	    								<form:input path="file2" type="file" class="form-control" id="file2" placeholder="Mother's DNA"></form:input>
	    								<!--<small id="dnaHelp" class="form-text text-muted">We'll never share your DNA with anyone else. </small>-->
	 								</div>
	  								<button id="submitButton" type="submit" class="btn btn-primary" onclick="move()">Submit</button>
								</form:form>
								<br>
								<div id="progress" class="progress" style="display:none;">
  									<div id = "progressBar" class="progress-bar progress-bar-striped active" role="progressbar"
  										aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%;">
  									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
		<script type="text/javascript">
			
			var i = 0;
			
			function move() {
				if (i == 0) {
					i = 1;
					var div = document.getElementById("progress");
					var elem = document.getElementById("progressBar");
					div.style.display = "block";
					width = 1;
					var id = setInterval(frame, 50);
					function frame() {
						if (width >= 100) {
							clearInterval(id);
							i = 0;
						} else {
							width++;
							elem.style.width = width + "%";
						}
					}
				}
			}
			
	</script>
	
	<div id="gtco-services">
		<div class="gtco-container">
			
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					
				</div>
			</div>
		</div>
	</div>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="resources/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="resources/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="resources/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="resources/js/main.js"></script>

	</body>
</html>