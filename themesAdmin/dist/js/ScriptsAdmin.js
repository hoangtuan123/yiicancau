
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


App.controller("MenuAdmin",function ($scope,$http,$location) {

	$http.get('index.php?r=admin/GetMenu').then(function(response){
		$scope.menuadmin=response.data;
	});
});



App.controller("mycontrolleroitm",function ($scope,$http,$location) {

	$http.get('index.php?r=admin/OitmJson').then(function(response){
		$scope.products=response.data;
	});
});


App.controller("mycontrolleroing",function ($scope,$http,$location) {

	$http.get('index.php?r=admin/OingJson').then(function(response){
		$scope.products=response.data;
	});
});



App.controller("mycontrolleroitb",function ($scope,$http,$location) {

	$http.get('index.php?r=admin/OitbJson').then(function(response){
		$scope.products=response.data;
	});
});




App.controller("mycontrollerormc",function ($scope,$http,$location) {

	$http.get('index.php?r=admin/OrmcJson').then(function(response){
		$scope.products=response.data;
	});
});



App.controller("mycontrollerslide",function ($scope,$http,$location) {

	$http.get('index.php?r=admin/SlideJson').then(function(response){
		$scope.products=response.data;
	});
});



App.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/OITM', {
        templateUrl: 'index.php?r=admin/Oitm',
        controller: 'mycontrolleroitm'
      })
      .when('/OING', {
        templateUrl: 'index.php?r=admin/Oing',
        controller: 'mycontrolleroing'
      })
      .when('/OITB', {
        templateUrl: 'index.php?r=admin/Oitb',
        controller: 'mycontrolleroitb'
      })
      .when('/ORMC', {
        templateUrl: 'index.php?r=admin/Ormc',
        controller: 'mycontrollerormc'
      })
      .when('/SLIDER', {
        templateUrl: 'index.php?r=admin/Slide',
        controller: 'mycontrollerslide'
      })
  }]).constant('FIREBASE_URL', 'something');;
