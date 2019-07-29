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
						class="text-white font-weight-light text-uppercase font-weight-bold">상품</h1>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="right_sidebar.jsp" flush="false"></jsp:include>
	
	<div class="site-section">
      <div class="container">
      	<p><button class="btn btn-info" type="button" id="add_item">상품 추가</button></p>
        <div class="row">
        <c:forEach items="${ item_list }" var="item">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="h-entry">
              <img src="/webapp/resources/images/blog_1.jpg" alt="Image" class="img-fluid">
              <h2 class="font-size-regular"><a href="<%=request.getContextPath()%>/item/${item.board_id}">${ item.title }</a></h2>
              <div class="meta">${ item.nickname } <span class="mx-2">•</span> ${ item.write_date }<span class="mx-2">•</span> ${ item.getCategoryString() }</div>
              <div class="meta mb-4">조회수 : ${ item.view_cnt } <span class="mx-2">•</span>댓글수 : ${ item.comment_cnt }<span class="mx-2">•</span>좋아요/싫어요 : ${ item.like_cnt }/${ item.dislike_cnt } </div>
              <p style="word-wrap: break-word;">${ item.getRestrictedContent() }</p>
            </div> 
          </div>
          </c:forEach>
        </div>
      </div>
    </div>	

	<jsp:include page="javascriptInclude.jsp" flush="false"></jsp:include>
</body>
</html>