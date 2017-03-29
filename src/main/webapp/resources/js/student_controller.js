'use strict';

App.controller('StudentController', ["$scope", "StudentService", function($scope, studentService) {
	var self = this;
	$scope.student = {id:null,name:"",age:"",address:""};
	
	fechAll();
	
	function fechAll() {
		studentService.fechAll()
		.then(
			function(data) {
				$scope.students = data;
			}, function(error) {
				console.log("Error: " + error);
			}
		);
	}
	
	function createStudent(student) {
		studentService.createStudent(student)
		.then(
			function(response) {
				fechAll();
				reset();
			},
			function(error) {
				console.log("Error: " + error);
			}
		);
	}
	
	function updateStudent(student, id) {
		studentService.updateStudent(student, id)
		.then(
			function(response) {
				fechAll();
			},
			function(error) {
				console.log("Error: " + error);
			}
		);
	}
	
	$scope.deleteStudent = function(id) {
		studentService.deleteStudent(id)
		.then(
			fechAll,
			function(error) {
				console.log("Error: " + error);
			}
		);
	}
	
	$scope.viewStudent = function(id) {
		studentService.findStudent(id)
			.then(function(data) {
				$scope.student = data;
			}, function(error) {
				console.log("Error: " + error)
			}
		);
	}
	
	$scope.reset = function() {
		$scope.student = {id:null,name:"",age:"",address:""};
	}
	
	$scope.submit = function() {
		if($scope.student.id !== null) {
			updateStudent($scope.student, $scope.student.id);
		} else {
			createStudent($scope.student);
		}
	}
}]);