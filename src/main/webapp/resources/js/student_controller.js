'use strict';

App.controller('StudentController', [
		"$scope",
		"StudentService",
		'$location',
		'$routeParams',
		function($scope, studentService, $location, $routeParams) {
			var self = this;
			$scope.student = {
				id : null,
				name : "",
				age : "",
				address : ""
			};

			self.fetchAll = fetchAll;
			self.createStudent = createStudent;
			self.updateStudent = updateStudent;
			self.deleteStudent = deleteStudent;
			self.viewStudent = viewStudent;
			self.reset = reset;
			self.submit = submit;
			
			// For update student
			if($routeParams.id !== undefined) {
				self.student = self.viewStudent($routeParams.id);
			}

			fetchAll();

			function fetchAll() {
				studentService.fetchAll().then(function(data) {
					$scope.students = data;
				}, function(error) {
					console.log("Error: " + error);
				});
			}

			function createStudent(student) {
				studentService.createStudent(student).then(function(response) {
					fetchAll();
					reset();
				}, function(error) {
					console.log("Error: " + error);
				});
			}

			function updateStudent(student, id) {
				studentService.updateStudent(student, id).then(
						function(response) {
							$location.path("#!/students");
						}, function(error) {
							console.log("Error: " + error);
						});
			}

			function deleteStudent(id) {
				studentService.deleteStudent(id).then(fetchAll,
						function(error) {
							console.log("Error: " + error);
						});
			}

			function viewStudent(id) {
				studentService.findStudent(id).then(function(data) {
					$scope.student = data;
				}, function(error) {
					console.log("Error: " + error)
				});
			}

			function reset() {
				$scope.student = {
					id : null,
					name : "",
					age : "",
					address : ""
				};
			}

			function submit() {
				if ($scope.student.id !== null) {
					updateStudent($scope.student, $scope.student.id);
				} else {
					createStudent($scope.student);
					$location.path("#!/students");
				}
			}
		} ]);
