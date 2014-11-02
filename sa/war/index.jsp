<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Samutprakarn</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
<!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
<!--script src="js/less-1.3.3.min.js"></script-->
<!--append ‘#!watch’ to the browser URL, then refresh the page. -->

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="img/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="img/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="img/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="img/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="img/favicon.png">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
         <script>
	var xmlhttp = new XMLHttpRequest();

	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4 && xmlhttp.status==200){ 
			document.getElementById("news").innerHTML = xmlhttp.responseText;
			
		}
	}

	var url="text.txt";
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
</script>
</head>

<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column text-right">
				<%
					String getusername_ses = (String) session
							.getAttribute("username_ses");
					String getname_ses = (String) session.getAttribute("name_ses");
					if (getusername_ses == null) {
				%>
				<a href="signin.html">Sign In</a>
				<%
					} else {
				%><a href="signout.jsp"><span class="glyphicon glyphicon-user"></span>
					&nbsp;<%=getname_ses%> (Log Out)</a>
				<%
					}
				%>
			</div>
			<div class="col-md-12 column">
				<div id="news">
					<marquee>

					</marquee>
				</div>

			</div>
			<div class="col-md-12 column">
				<div class="page-header">
					<h1>Samutprakarn:สมุทรปราการ</h1>
				</div>
				<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
					</div>

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp">หน้าแรก</a></li>
							<li><a href="samutprakarn.jsp">สถานที่ท่องเที่ยว</a></li>
							<li><a href="gallery.jsp">อัลบั้มภาพ</a></li>
							<li><a href="provider.jsp">คณะผู้จัดทำ</a></li>
						</ul>


					</div>

				</nav>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="row">
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="300x200" src="http://lorempixel.com/600/200/people">
							<div class="caption">
								<h3>Thumbnail label</h3>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
								<p>
									<a class="btn btn-primary" href="#">Action</a> <a class="btn"
										href="#">Action</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="300x200" src="http://lorempixel.com/600/200/city">
							<div class="caption">
								<h3>Thumbnail label</h3>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
								<p>
									<a class="btn btn-primary" href="#">Action</a> <a class="btn"
										href="#">Action</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="300x200" src="http://lorempixel.com/600/200/sports">
							<div class="caption">
								<h3>Thumbnail label</h3>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
								<p>
									<a class="btn btn-primary" href="#">Action</a> <a class="btn"
										href="#">Action</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
