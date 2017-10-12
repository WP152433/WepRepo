<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.*"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>내 블로그</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/myblog.css">
</head>

<body>
	<!-- navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark"
		style="background-color: #087F8C;">
		<a class="navbar-brand" href="#">Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this);"><a class="nav-link" href="#intro">소개
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this);"><a class="nav-link" href="#hobby">취미</a>
				</li>
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this);"><a class="nav-link" href="#dream">꿈</a></li>
			</ul>

			<%-- 세션이 없는 경우 --%>
			<%
				UserVo user = (UserVo) session.getAttribute("user");
				if (user == null) {
			%>
			<a class="text-bold text-white" style="text-decoration: none"
				href="/WebClass/bloglogin">Sign in</a> <span
				class="text-bold text-white">&nbsp; or &nbsp;</span> <a
				class="text-bold text-white" style="text-decoration: none"
				href="/WebClass/signup">Sign up</a>
			<%
				} else {
			%>
			<%-- 세션이 있는 경우 --%>
			<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
				<li class="nav-item dropdown"><a
					class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
					id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <%=user.getName()%>님
				</a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="bd-versions">
						<form action="/WebClass/bloglogout" method="post">
							<button type="submit" class="dropdown-item">Sign out</button>
						</form>
						<div class="dropdown-divider"></div>
						<button type="button" class="dropdown-item">Action1</button>
						<button type="button" class="dropdown-item">Action2</button>
					</div></li>
			</ul>
			<%
				}
			%>
		</div>
		</div>
	</nav>
	<br>
	<!-- 인디케이터 -->
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel" style="height: 950px;">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>

		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="/WebClass/image/cat.jpg"
					alt="환영합니다!">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="/WebClass/image/controllers.jpg"
					alt="게임">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="/WebClass/image/badminton.jpg"
					alt="운동">
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

	<div class="jumbotron jumbotron-fluid">
		<div class="container" id="intro">
			<div class="media-body">
				<h1 class="mt-0">나의 소개</h1>
				<br>
				<div class="media mt-3">
					<a class="d-flex pr-3" href="#"> <img
						src="/WebClass/image/me.JPG" alt="Generic placeholder image">
					</a>
					<div class="media-body">

						<h5 class="mt-0">최성원</h5>
						<br>
						<h5 class="mt-0">18세</h5>
						<br>
						<h5 class="mt-0">한국디지털미디어고등학교 재학중</h5>
						<br>
						<h5 class="mt-0">게임 플레이와 개발 모두 좋아합니다!</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="jumbotron jumbotron-fluid">
		<div class="container" id="hobby">
			<h1 class="mt-0">나의 취미</h1>
			<br>

			<div class="media">
				<img class="d-flex mr-3" src="/WebClass/image/unity.png"
					alt="Generic placeholder image">
				<div class="media-body">
					<h5 class="mt-0">게임 개발</h5>
					게임 개발은 내가 꿈꾸던 나만의 게임을 창조하는 즐거운 취미입니다.
				</div>
			</div>

			<br>
			<div class="media">
				<div class="media-body" align="right">
					<h5 class="mt-0 mb-1">배드민턴</h5>
					배드민턴은 제가 가장 좋아하는 운동입니다.<br> 고등학교 1학년 때 처음 접해 지금까지 틈틈히 하고있는
					운동입니다.
				</div>
				<img class="d-flex ml-3" src="/WebClass/image/badminton.png"
					alt="Generic placeholder image">
			</div>

			<br>
			<div class="media">
				<img class="d-flex mr-3" src="/WebClass/image/headphones.png"
					alt="Generic placeholder image">
				<div class="media-body">
					<h5 class="mt-0">음악 감상</h5>
					저는 다양한 장르의 음악을 듣는 것을 좋아합니다.<br> 생소한 장르의 음악을 듣다보면 다른 나라에 온 것 같은
					생소하지만 신선한 느낌이 들곤 합니다.
				</div>
			</div>

		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<div class="jumbotron jumbotron-fluid">
		<div class="container" id="dream">
			<h1 class="mt-0">나의 꿈</h1>
			<br>
			<div class="card" style="width: 300px;">
				<img class="card-img-top" src="/WebClass/image/dev.jpg"
					alt="Card image cap">
				<div class="card-body">
					<p class="card-text">게임 개발자
				</div>

			</div>
			<br>
			<h3>게임 프로그래머(Game programmer)는 비디오 게임을 개발하는 직업을 일컫는 말이다. 온라인
				게임회사에 들어가면 온라인게임을 만들기도 하고, CD게임을 만들기도 한다. 게임을 주요로 만든다. 그리고 여러가지 컴퓨터
				게임을 편집하기도 한다. 또 온라인 게임을 직접 해보면서 그 게임이 어떠한지 평가하기도 한다.</h3>
		</div>


	</div>

	<!-- 모달 창 -->
	<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">로그인 결과</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달 -->
	<div class="modal" id="successModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">축하합니다!</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- sign up 모달 -->
	<div class="modal" id="signUpModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">회원가입</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form class="form my-2 my-lg-0" id="SignUpForm">

						<!--학년-->
						<div class="form-group">
							<label for="gradeRadio">학년</label>
							<div class="form-check form-check-inline">
								<label class="form-check-label"> <input
									class="form-check-input" type="radio" name="inlineRadioOptions"
									id="inlineRadio1" value="option1" required> 1
								</label>
							</div>
							<div class="form-check form-check-inline">
								<label class="form-check-label"> <input
									class="form-check-input" type="radio" name="inlineRadioOptions"
									id="inlineRadio2" value="option2" required> 2
								</label>
							</div>
							<div class="form-check form-check-inline">
								<label class="form-check-label"> <input
									class="form-check-input" type="radio" name="inlineRadioOptions"
									id="inlineRadio3" value="option3" required> 3
								</label>
							</div>
							<!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
						</div>

						<!-- 반 -->

						<label for="exampleFormControlSelect1">반</label> <select
							class="form-control" id="exampleFormControlSelect1" required>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
						</select>

						<!-- 번호 -->
						<div class="form-group">
							<label for="number">번호</label> <input type="text"
								class="form-control" id="inputNumber" placeholder="번호" required>
						</div>

						<!-- 이름 -->

						<div class="form-check">
							<label class="name">이름</label> <input type="text"
								class="form-control" id="name" placeholder="이름" required>
						</div>

						<!-- 제출 -->
						<button type="submit" class="btn btn-primary">가입</button>

					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>

	<script src="/WebClass/js/myblog.js"></script>

</body>
</html>