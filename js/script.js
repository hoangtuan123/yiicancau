

/*
* 
*  code angulajs controller and model
*
*/
var app = angular.module('myApp',['ngRoute','bootstrapLightbox']);


app.directive('clicktotop', function() {
    return function(scope, element) {
      	
      	 element.find('a.btn').on('click', function(e) {
      	 		//alert('0');
      	 		//window.scrollTo(0, 0);
      	 		document.body.scrollTop = document.documentElement.scrollTop = 0;
        		//var link = $(e.currentTarget);
				//e.preventDefault();
				
      	});
    };
});

app.directive("autocomplete", ["AutoCompleteService", function (AutoCompleteService) {
    return {
        restrict: "A",
        link: function (scope, elem, attr, ctrl) {
            elem.autocomplete({
                source: function (searchTerm, response) {
                    AutoCompleteService.search(searchTerm.term).then(function (autocompleteResults) {
                        response($.map(autocompleteResults, function (autocompleteResult) {
                            return {
                                label: autocompleteResult.YourDisplayProperty,
                                value: autocompleteResult 
                            }
                        }))
                    });
                },
                minLength: 2,
                select: function (event, selectedItem) {
                    // Do something with the selected item, e.g. 
                    scope.txtTenSP= selectedItem.item.value;
                    scope.$apply();
                    event.preventDefault();
                }
            });
        }
    };
}]);
app.factory("AutoCompleteService", ["$http", function ($http) {
    return {
        search: function (term) {
            return $http.get("index.php?r=site/ListNameProductJson&TenSP=" + term).then(function (response) {
            	var a=response.data;
            	var jsonnew="[";
				for (var i = 0; i <  a.length;i++) {
				    console.log(JSON.stringify(a[i].TenSP))

					jsonnew+='"'+a[i].TenSP+'"';
					 if (i == a.length -1) {

				    }
				    else
				    {
				    	jsonnew+=",";
				    }
				}
				jsonnew+="]";
				//console.log(JSON.stringify(jsonnew))

                return JSON.parse(jsonnew);//JSON.stringify(newJson);
            });
        }
    };
}]);
//return $http.get("index.php?r=site/ListNameProductJson&TenSP=" + term).then(function (response) {

app.run(['$rootScope','$location', '$routeParams', function($rootScope, $location, $routeParams) {
    $rootScope.$on('$routeChangeSuccess', function(e, current, pre) {
      console.log('Current route name: ' + $location.path());
      // Get all URL parameter
      console.log($routeParams);
      if ($location.path()=="/") {
      	$('#carouselBlk').show();
      }else
      {
      	$('#carouselBlk').hide();	
      }
      //alert();

    });
  }]);



app.controller('mycontroller', function ($scope,$http){
	
	$http.get('index.php?r=site/MenuJson').then(function(response){
		$scope.menu = response.data;
	});


	$http.get('index.php?r=site/ProductJson&data=2').then(function(response){
		$scope.productsListLeft = response.data;
	});

});


app.controller('mycontrollerSilder', function ($scope,$http){
	
	$http.get('index.php?r=site/GetSilder').then(function(response){
		$scope.silder = response.data;
	});

});

var a={};
app.controller('mycontrollerSearch', function ($scope,$http,$location){
	
	$http.get('index.php?r=site/NganhJson').then(function(response){
		$scope.nganhs = response.data;
	});
	$scope.drlMaNganh="ALL";

	$scope.search = function(){
		var tensp="ALL";
		var manganh="ALL";
		if (angular.isUndefined($scope.txtTenSP)==false) {
			tensp=$scope.txtTenSP;
		}
		if (angular.isUndefined($scope.drlMaNganh)==false) {
			manganh=$scope.drlMaNganh;
		}
		var link ='/ProdcutSearch/'+tensp+'/'+manganh+'';
		$location.path(link);
		//alert(link);
	};
	/*
	$http.get('index.php?r=site/ProductAutoCompleteJson').then(function(response){
		$scope.tenspautocomplete = response.data;
		a=$scope.tenspautocomplete 
		
		console.log("Nganh = " + JSON.stringify(a));
		
	});
	*/
});



app.controller('mycontrollerSearchResult', function ($scope,$http,$routeParams){
	var linkGetData='index.php?r=site/ProdcutSearch&TenSP='+$routeParams.TenSP+'&MaNganh='+$routeParams.MaNganh;
	console.log(linkGetData);
	$http.get(linkGetData).then(function(response){
		$scope.products = response.data;
		//console.log("LOG = "+JSON.stringify($scope.products));
	});
});



app.controller('mycontrollerProductLoaiResult', function ($scope,$http,$routeParams){
	var linkGetData='index.php?r=site/ProdcutItGroup&MaLoai='+$routeParams.MaLoai;
	console.log(linkGetData);
	$http.get(linkGetData).then(function(response){
		$scope.products = response.data;
		//console.log("LOG = "+JSON.stringify($scope.products));
	});
});


app.controller('mycontrollerIndex', function ($scope,$http){
	$http.get('index.php?r=site/ProductJson&data=6').then(function(response){
		$scope.products = response.data;
	});
	$http.get('index.php?r=site/ProductJson&data=4').then(function(response){
		$scope.productsList = response.data;
	});
	$http.get('index.php?r=site/IndexJson').then(function(response){
		$scope.arraymenu = response.data;

	});
});




app.controller('myControllerProductDetail',function ($scope,$http,$routeParams,Lightbox){
	var linkGetData='index.php?r=site/ProductDetailJson&id='+$routeParams.id;
	$http.get(linkGetData).then(function(response){
		var detail=response.data
		$scope.detail = detail;
		//$scope.detail =[{"MaSP":"00001","TenSP":"NFT Super 60 - 300","MaNganh":"02","MaLoai":"0204","MaNhan":"NFT","TenNganh":"C\u1ea7n c\u00e2u","TenLoai":"C\u1ea7n 3 kh\u00fac s\u00f4ng h\u1ed3","TenNhan":"NFT","MaNguoiTao":"user1","TenNguoiTao":"Tu\u1ea5n","NgayTao":"2016-04-12","SuDung":"A","TinhTrang":"90%","TenVietTat":"NFT Super 60 -300","MoTa":"NULL","Mau":"Tr\u1eafng","QLTonKho":"1","QLSerial":"NULL","MaNCC":"NULL","TenNCC":null,"Link":"images\/img\/_14_1593.JPG","HinhAnh":"NULL","ChieuDai":"NULL","CanNang":"NULL","DoSau":"NULL","Lure":"NULL","Line":"NULL","PE":"NULL","Ring":"NULL","Hook":"NULL","SoKhoen":"NULL","Khoen":"NULL","Blank":"NULL","Bu":"NULL","Pat":"NULL","Tua":"NULL","Thang":"NULL","BacDan":"NULL","CongNghe":"NULL","Size":"NULL","LoaiDay":null,"Gia":null}];
		//console.log("User = " + JSON.stringify(detail));
	});

	Lightbox.templateUrl = 'index.php?r=site/TempLightBox';

	$scope.images="";
	$http.get('index.php?r=site/ListLinkImgProductJson&MaSP='+$routeParams.id).then(function(response){
		var detail=
		$scope.images = response.data;

		//$scope.detail =[{"MaSP":"00001","TenSP":"NFT Super 60 - 300","MaNganh":"02","MaLoai":"0204","MaNhan":"NFT","TenNganh":"C\u1ea7n c\u00e2u","TenLoai":"C\u1ea7n 3 kh\u00fac s\u00f4ng h\u1ed3","TenNhan":"NFT","MaNguoiTao":"user1","TenNguoiTao":"Tu\u1ea5n","NgayTao":"2016-04-12","SuDung":"A","TinhTrang":"90%","TenVietTat":"NFT Super 60 -300","MoTa":"NULL","Mau":"Tr\u1eafng","QLTonKho":"1","QLSerial":"NULL","MaNCC":"NULL","TenNCC":null,"Link":"images\/img\/_14_1593.JPG","HinhAnh":"NULL","ChieuDai":"NULL","CanNang":"NULL","DoSau":"NULL","Lure":"NULL","Line":"NULL","PE":"NULL","Ring":"NULL","Hook":"NULL","SoKhoen":"NULL","Khoen":"NULL","Blank":"NULL","Bu":"NULL","Pat":"NULL","Tua":"NULL","Thang":"NULL","BacDan":"NULL","CongNghe":"NULL","Size":"NULL","LoaiDay":null,"Gia":null}];
		//console.log("User = " + JSON.stringify(detail));
	});

	
	$scope.openLightboxModal = function (index) {
		console.log($scope.images+ index);
    	Lightbox.openModal($scope.images, index);

  	};

});


app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl:'index.php?r=site/PartialIndex',
        controller: 'mycontrollerIndex'
      }).
      when('/ProductDetail/:id', {
        templateUrl: 'index.php?r=site/ProductDetail',
        controller: 'myControllerProductDetail'
      }).
      when('/ProdcutSearch/:TenSP/:MaNganh', {
        templateUrl: 'index.php?r=site/ProductSearchView',
        controller: 'mycontrollerSearchResult'
      })
       .when('/ProdcutSearch/:MaLoai', {
        templateUrl: 'index.php?r=site/ProductSearchView',
        controller: 'mycontrollerProductLoaiResult'
      })
      .otherwise({
        redirectTo: '/'
      });
  }]).constant('FIREBASE_URL', 'something');;

