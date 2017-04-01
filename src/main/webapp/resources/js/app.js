'use strict';

var App = angular.module('myApp', [ "ngRoute" ]);

App.config(function($routeProvider) {
	$routeProvider.when("/edit/:id", {
		templateUrl : "edit",
		controller : "StudentController",
		controllerAs : "studentCtrl"
	}).when("/create", {
		templateUrl : "create",
		controller : "StudentController",
		controllerAs : "studentCtrl"
	}).when("/students", {
		template : "<ng-students></ng-students>",
		controller : "StudentController",
		controllerAs : "studentCtrl"
	}).otherwise({
		redirectTo : function(routeParams, path, query_query) {
			return "/students";
		}
	});
});