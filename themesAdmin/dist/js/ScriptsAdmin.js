
"use strict";

var App = angular.module("AppAdmin",["ngRoute"]);

App.controller("loginAdmin",function ($scope,$http,$location) {

	$scope.submitbutton = function(){
		console.log('a');
		//alert($scope.username);
		//alert($scope.password);
		//return false;
		var request = $http({
		    method: "post",
		    //url: $location.path("index.php?r=admin/AuLogin"),
		    url: "index.php?r=admin/AuLogin",
		    data: {
		        username: $scope.username,
		        password: $scope.password
		    },
		    headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
		});

		request.success(function (data) {
		    console.log("You have login successfully with email"+data);
		    if (data==0) {
		    	$scope.err="Có Lỗi Vui Lòng Kiểm Tra"	;
		    }else{
		    	window.location.href = "index.php?r=admin/index";
		    	$scope.err=""	;
		    }
		    
		});
	};

});

App.controller("loginOut",function ($scope,$http,$location) {

	$scope.submitbutton = function(){
		console.log('a');

		$http.get('index.php?r=admin/Logout').then(function(response){
			console.log("You have logout successfully with email"+response.data);
			//$location.path("index.php?r=admin/login");
			window.location.href = "index.php?r=admin/login";
		});
	};

});