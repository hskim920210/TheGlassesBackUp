<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Index</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<jsp:include page="cssInclude.jsp" flush="false"></jsp:include>
</head>
<body>

	<jsp:include page="menu.jsp" flush="false"></jsp:include>

	<jsp:include page="modalLogin.jsp" flush="false"></jsp:include>

	<div class="site-blocks-cover inner-page-cover overlay"
		style="background-image: url(<%=request.getContextPath()%>/resources/images/hero_bg_1.jpg);"
		data-aos="fade" data-stellar-background-ratio="0.5">
		<div class="container">
			<div
				class="row align-items-center justify-content-center text-center">

				<div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
					<h1
						class="text-white font-weight-light text-uppercase font-weight-bold">리뷰</h1>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="right_sidebar.jsp" flush="false"></jsp:include>

	<div class="site-section block-13" style="padding-bottom: 10; margin-left: 10%; margin-right: 10%; margin-top: 130;">
		<div align="left" class="dropdown">
			<button>
			카테고리 선택
			</button>
			<ul>
				<li>전체</li>
				<li>운동기구</li>
				<li>헬스장</li>
				<li>장소</li>
			</ul>
		</div>
	</div>

	<div align="center" style="margin-left: 10%; margin-right: 10%;">
		<div class="site-section block-13" style="padding-top: 5;">
			<div class="row">
			<c:forEach items="${ simpleBoardReviewViewList }" var="item">
				<a href="#" class="col-md-6 col-lg-4 mb-4 mb-lg-4 unit-1 text-center" style="padding: 0;"> <img
						src="<%=request.getContextPath()%>/resources/images/${item.image}"
						alt="${item.image}" class="img-fluid" width="700" height="799">
						<div class="unit-1-text">
							<h3 class="unit-1-heading">${item.title}</h3>
							<p class="px-5">${item.content}</p>
							<p class="px-5" style="text-align: right;">작성자 : ${item.nickname}<br>
											작성일 : ${item.write_date}<br>
											조회수 : ${item.view_cnt}<br>
											좋아요/싫어요 : ${item.like_cnt}/${item.dislike_cnt}</p>
						</div>
					</a>
			</c:forEach>
			
			</div>
		</div>
	</div>

	<jsp:include page="javascriptIncludeForReview.jsp" flush="false"></jsp:include>
</body>
</html>