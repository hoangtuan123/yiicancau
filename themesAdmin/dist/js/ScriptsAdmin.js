var App = angular.module("AppAdmin",["ngRoute"]);

App.controller("loginAdmin",function ($scope,$http) {

	$scope.submitbutton = function(){
		alert($scope.username);
		alert($scope.password);
		return false;
	};

});