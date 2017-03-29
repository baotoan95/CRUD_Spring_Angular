<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<script lang="javascript" src='<c:url value="/resources/js/angular.min.js"></c:url>'></script>
<script lang="javascript" src='<c:url value="/resources/js/angular-route.min.js"></c:url>'></script>
<script lang="javascript" src='<c:url value="/resources/js/app.js"></c:url>'></script>
<script lang="javascript" src='<c:url value="/resources/js/student_service.js"></c:url>'></script>
<script lang="javascript" src='<c:url value="/resources/js/student_controller.js"></c:url>'></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style type="text/css">
	.glyphicon {
		cursor: pointer;
	}
</style>
</head>
<body ng-app="myApp">
	<div class="container" style="margin-top: 20px;" ng-controller="StudentController">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<form class="form-horizontal" ng-submit="submit()">
					<input type="hidden" ng-model="student.id"/>
				  	<div class="form-group">
				    	<label for="name" class="col-sm-2 control-label">Name</label>
				    	<div class="col-sm-10">
				      	<input type="text" ng-model="student.name" class="form-control" id="name" placeholder="Name">
				    </div>
				  	</div>
				  	<div class="form-group">
				    	<label for="age" class="col-sm-2 control-label">Age</label>
				    	<div class="col-sm-10">
					      	<input type="number" ng-model="student.age" class="form-control" id="age" placeholder="Age">
					    </div>
				  	</div>
				  	<div class="form-group">
				    	<label for="address" class="col-sm-2 control-label">Address</label>
				    	<div class="col-sm-10">
					      	<input type="text" ng-model="student.address" class="form-control" id="address" placeholder="Address">
					    </div>
				  	</div>
				  	<div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					      	<input type="submit" class="btn btn-default" value="{{student.id ? 'Update' : 'Add'}}"/>
					      	<button type="button" class="btn btn-default" ng-click="reset()">Reset</button>
					    </div>
				  	</div>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h3>Student List</h3>
				<table class="table">
					<thead>
						<tr>
							<th width="1%">ID</th>
							<th width="20%">Name</th>
							<th width="10%">Age</th>
							<th width="20%">Address</th>
							<th width="15%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="student in students">
							<td>{{student.id}}</td>
							<td>{{student.name}}</td>
							<td>{{student.age}}</td>
							<td>{{student.address}}</td>
							<td>
								<span class="glyphicon glyphicon-edit" title="Edit" ng-click="viewStudent(student.id)"></span> 
								<span class="glyphicon glyphicon-trash" title="Delete" ng-click="deleteStudent(student.id)"></span>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>