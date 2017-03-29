'use strict';

angular.module('myApp').factory('StudentService', ['$http', '$q', function($http, $q) {
	var REST_SERVICE_API = "http://localhost:8080/CRUD_Spring_Angular/student";
	
	var service = {
		fechAll: fechAll,
		createStudent: createStudent,
		deleteStudent: deleteStudent,
		updateStudent: updateStudent,
		findStudent: findStudent
	}
	
	return service;
	
	function fechAll() {
		var defer = $q.defer();
		$http.get(REST_SERVICE_API)
		.then(
			function(response) {
				defer.resolve(response.data);
			}, function(error) {
				defer.reject(error);
			}
		);
		return defer.promise;
	}
	
	function createStudent(student) {
		var defer = $q.defer();
		$http.post(REST_SERVICE_API + "/create", student)
		.then(
			function(response) {
				defer.resolve(response.data);
			}, function(error) {
				defer.reject(error);
			}
		);
		return defer.promise;
	}
	
	function deleteStudent(id) {
		var defer = $q.defer();
		$http.delete(REST_SERVICE_API + "/delete/" + id)
		.then(
			function(response) {
				defer.resolve(response.data);
			},
			function(error) {
				defer.reject(error);
			}
		);
		return defer.promise;
	}
	
	function findStudent(id) {
		var defer = $q.defer();
		$http.get(REST_SERVICE_API + "/" + id)
		.then(
			function(response) {
				defer.resolve(response.data);
			},
			function(error) {
				defer.reject(error);
			}
		);
		return defer.promise;
	}
	
	function updateStudent(student, id) {
		var defer = $q.defer();
		$http.put(REST_SERVICE_API + "/update/" + id, student)
		.then(
			function(response) {
				defer.resolve(response.data);
			},
			function(error) {
				defer.reject(error);
			}
		);
		return defer.promise;
	}
}]);