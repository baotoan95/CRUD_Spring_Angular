'use strict';

App.directive("ngStudents", function() {
	
	return {
		restrict: "E",
		templateUrl: "students",
		link: function(scope, element, attrs) {
			scope.fetchAll();
		}
	}
});