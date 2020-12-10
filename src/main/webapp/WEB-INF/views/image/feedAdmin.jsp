<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Instagram</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="shortcut icon" href="/images/favicon.ico">
<link rel="stylesheet" href="/css/styles.css">
</head>
<body>

	<%@ include file="../include/nav.jsp"%>

	<main id="feed">
		
		<!-- 유저가 업로드한 Feed 사진 -->
        				<c:forEach var="image" items="${user.images}">
        					<div class="profile__photo">
        						<a href="image-detail.html"> <img src="/upload/${image.postImage}"></a>
        						<div class="profile__photo-overlay">
        							<span class="profile__photo-stat"> <i class="fa fa-heart"></i> ${image.likeCount}</span>
        							<span class="profile__photo-stat"> <i class="fa fa-comment"></i> 22</span>
        						</div>
        					</div>
        </c:forEach>
		
	</main>

	<%@ include file="../include/footer.jsp"%>
	<script src="/js/feed.js"></script>
	<script src="/js/like.js"></script>
</body>
</html>
