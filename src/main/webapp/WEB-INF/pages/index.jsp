<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<script lang="javascript"
	src='<c:url value="/resources/js/angular.min.js"></c:url>'></script>
<script lang="javascript"
	src='<c:url value="/resources/js/angular-route.min.js"></c:url>'></script>
<script lang="javascript"
	src='<c:url value="/resources/js/app.js"></c:url>'></script>
<script lang="javascript"
	src='<c:url value="/resources/js/student_service.js"></c:url>'></script>
<script lang="javascript"
	src='<c:url value="/resources/js/student_controller.js"></c:url>'></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="<c:url value='/resources/css/style.css'></c:url>">
</head>
<body ng-app="myApp">
	<div class="container" style="margin-top: 20px;">
		<div class="row">
			<ng-view></ng-view>
		</div>
	</div>
</body>
</html>