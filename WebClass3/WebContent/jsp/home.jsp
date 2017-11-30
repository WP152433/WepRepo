<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>여행가쉴</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link rel="stylesheet" href="${ contextPath }/css/footer.css">
<style>
div.container {
	padding-top: 30px;
	padding-bottom: 20px;
}

#img {
	float: left;
	height: 400px;
	width: 650px;
}

#map {
	float: right;
	height: 400px;
	width: 50%;
}

#map2 {
	float: right;
	height: 400px;
	width: 50%;
}

#map3 {
	float: right;
	height: 400px;
	width: 50%;
}
</style>

<script>
	function menu_over(e) {
		e.setAttribute("class", "nav-item active");
	}
	function menu_out(e) {
		e.setAttribute("class", "nav-item");
	}
</script>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">여행가쉴</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<%@ include file="menu.jsp"%>

			<%-- 세션이 없는 경우 --%>
			<c:if test="${ empty user }">
				<a class="text-bold text-white" style="text-decoration: none"
					href="${ contextPath }/jsp/login.jsp">Sign in</a>
				<span class="text-bold text-white">&nbsp; or &nbsp;</span>
				<a class="text-bold text-white" style="text-decoration: none"
					href="${ contextPath }/signup">Sign up</a>
			</c:if>
			<c:if test="${ not empty user }">
				<%-- 세션이 있는 경우 --%>
				<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
					<li class="nav-item dropdown"><a
						class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
						id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> ${ user.name } 님 </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="bd-versions">
							<form action="${ contextPath }/logout.do" method="post">
								<button type="submit" class="dropdown-item">Sign out</button>
							</form>
							<div class="dropdown-divider"></div>
							<button type="button" class="dropdown-item">Action1</button>
							<button type="button" class="dropdown-item">Action2</button>
						</div></li>
				</ul>
			</c:if>
		</div>
	</nav>
	<div class="container">
		<h1>오늘의 추천 여행지</h1>
	</div>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">

			<div class="carousel-item active">
				<img id="img" src="${ contextPath }/image/Sydney.jpg" alt="Sydney">
				<div id="map"></div>
				<div class="carousel-caption d-none d-md-block">
					<h3>호주 시드니</h3>
					<p>...</p>
				</div>

			</div>
			<div class="carousel-item">
				<img id="img" src="${ contextPath }/image/fukuoka.jpg" alt="Fukuoka">
				<div id="map2"></div>
				<div class="carousel-caption d-none d-md-block">
					<h3>후쿠오카</h3>
					<p>...</p>
				</div>

			</div>

			<div class="carousel-item">
				<img id="img" src="${ contextPath }/image/Matterhorn.jpg" alt="Sydney">
				<div id="map3"></div>
				<div class="carousel-caption d-none d-md-block">
					<h3>스위스 마테호른</h3>
					<p>...</p>
				</div>

			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>



	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCzUpj3avGyNjMyx-VUr1EpdSSHJ6LXpfA&callback=initMap">
		
	</script>

	<script>
		function initMap() {
			var uluru = {
				lat : -33.871437,
				lng : 151.208347
			};
			var uluru2 = {
				lat : 33.571273,
				lng : 130.359438
			};

			var uluru3 = {
				lat : 45.976742,
				lng : 7.658417
			};
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 11,
				center : uluru
			});
			var marker = new google.maps.Marker({
				position : uluru,
				map : map
			});

			var map2 = new google.maps.Map(document.getElementById('map2'), {
				zoom : 11,
				center : uluru2
			});
			var marker2 = new google.maps.Marker({
				position : uluru2,
				map : map2
			});

			var map3 = new google.maps.Map(document.getElementById('map3'), {
				zoom : 11,
				center : uluru3
			});
			var marker3 = new google.maps.Marker({
				position : uluru3,
				map : map3
			});

		}
	</script>

	<%@ include file="footer.jsp"%>

	<!-- Bootstrap js -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>

</body>
</html>