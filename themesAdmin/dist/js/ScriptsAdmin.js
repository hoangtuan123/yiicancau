
"use strict";

var App = angular.module("AppAdmin",["ngRoute","ui.bootstrap","ngAnimate","ngCkeditor"]);

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
		    	//alert('err');
		    	$scope.err="Có Lỗi Vui Lòng Kiểm Tra"	;
		    }else{
		    	window.location.href = "index.php?r=admin/index";
		    	$scope.err="";
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



App.controller("mycontrolleroitm",function ($scope,$http,$location,alertsManager,Utils,filterFilter) {
	$scope.alerts = alertsManager.alerts;
	alertsManager.clearAlerts();
	$scope.pageSize=10;
	$scope.currentPage=1;
	$scope.maxSize=5;
	$scope.numPages=5;
	$scope.products=[];
	$scope.totalItems =0;

	$http.get('index.php?r=admin/NganhJson').then(function(response){
		$scope.nganhs=response.data;
	});
	$http.get('index.php?r=admin/LoaiJson').then(function(response){
		$scope.loais=response.data;
	});
	$http.get('index.php?r=admin/NhanJson').then(function(response){
		$scope.nhans=response.data;
	});

	$scope.ddlNhan="0";

	$scope.ddlLoai="0";

	$scope.ddlNganh="0";

	//$http.get('index.php?r=admin/OitmJson').then(function(response){
	//	$scope.products=response.data;
	//});


	$scope.search = function(){
		$http.get('index.php?r=admin/OitmJson&TenSP='+Utils.isUndefinedOrNull($scope.TenSP)+'&MaNganh='+$scope.ddlNganh+'&MaLoai='+$scope.ddlLoai+'&MaNhan='+$scope.ddlNhan).then(function(response){
			$scope.products=response.data;
			$scope.totalItems = $scope.products.length;
		});
	};


	$scope.delete = function(x){
		$http.get('index.php?r=admin/DeleteOitmJson&MaSP='+x).then(function(response){
			$scope.totalItems = $scope.products.length;
			console.log(response.data);


			if (response.data>=1) {
		    	console.log(response.data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Xóa thành công Mã Sản Phẩm : '+x+'!', 'alert-success');

		    	$scope.products=null;
				$http.get('index.php?r=admin/OitmJson&TenSP='+Utils.isUndefinedOrNull($scope.TenSP)+'&MaNganh='+$scope.ddlNganh+'&MaLoai='+$scope.ddlLoai+'&MaNhan='+$scope.ddlNhan).then(function(response){
					$scope.products=response.data;
				});

			}else
			{
			    console.log(response.data);
			    //alertsManager.clearAlerts();
			    alertsManager.addAlert('Xóa thất bại Sản Phẩm : '+x+'!', 'alert-error');
			}
			
		});

		
	};


	//$scope.search = {};
	// $watch search to update pagination
	
	$scope.$watch('TenSP', function (newVal, oldVal) {
		$scope.filtered = filterFilter($scope.products, newVal);
		$scope.totalItems = $scope.filtered.length;
		//$scope.products.length=$scope.totalItems;
		console.log(newVal);
		console.log($scope.totalItems );
		$scope.maxSize = 5;
		$scope.currentPage = 1;
		//console.log($scope.filtered );
		
	}, true);
	
});


App.controller("mycontrolleroing",function ($scope,$http,$location,Utils,alertsManager) {
	$scope.alerts = alertsManager.alerts;
	alertsManager.clearAlerts();
	$scope.showInsert=0;


	$scope.ShowButtonInsert =function(){
		//$scope.showInsert=0;
		$scope.showInsert=1;
		$scope.MaNganh="";
		$scope.TenNganh="";
	};

	$scope.UpdsNganh=function(x,y){
		console.log(x);
		$scope.showInsert=2;
		$scope.MaNganh=x;
		$scope.TenNganh=y;

	};


	$http.get('index.php?r=admin/OingJson').then(function(response){
		$scope.products=response.data;
	});


	
	$scope.InsU_NG= function(){
		console.log('TenNganh: '+$scope.TenNganh);
		console.log('showInsert: '+$scope.showInsert);
		if ($scope.showInsert==1) {
			console.log('insert');
			$http.get('index.php?r=admin/InsertOingJson&MaNganh='+Utils.isUndefinedOrNull($scope.MaNganh)+'&TenNganh='+Utils.isUndefinedOrNull($scope.TenNganh)).then(function(response){
				if (response.data>=1) {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Thêm thành công Ngành : '+ Utils.isUndefinedOrNull($scope.MaNganh)+'!', 'alert-success');

			    	$http.get('index.php?r=admin/OingJson').then(function(response){
						$scope.products=response.data;
					});
			    }else
			    {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Thêm thất bại!', 'alert-error');
			    }
			});	
		}
		else if ($scope.showInsert==2){
			console.log('update');
			$http.get('index.php?r=admin/UpdateOingJson&MaNganh='+Utils.isUndefinedOrNull($scope.MaNganh)+'&TenNganh='+Utils.isUndefinedOrNull($scope.TenNganh)).then(function(response){
				if (response.data>=1) {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Cập Nhật thành công Ngành : '+ Utils.isUndefinedOrNull($scope.MaNganh)+'!', 'alert-success');

			    	$http.get('index.php?r=admin/OingJson').then(function(response){
						$scope.products=response.data;
					});
			    }else
			    {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Cập Nhật thất bại!', 'alert-error');
			    }
			});	
		}
		
	};

	$scope.delete=function (x){
		$http.get('index.php?r=admin/DeleteOingJson&MaNganh='+Utils.isUndefinedOrNull(x)).then(function(response){

			if (response.data>=1) {
		    	console.log(response.data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Xóa thành công Ngành : '+ Utils.isUndefinedOrNull(x)+'!', 'alert-success');

		    	$http.get('index.php?r=admin/OingJson').then(function(response){
					$scope.products=response.data;
				});
		    }else
		    {
		    	console.log(response.data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Xóa thất bại!', 'alert-error');
		    }
		});
	};


	

});



App.controller("mycontrolleroitb",function ($scope,$http,$location,Utils,alertsManager) {

	$scope.alerts = alertsManager.alerts;
	alertsManager.clearAlerts();


	$http.get('index.php?r=admin/NganhJson').then(function(response){
		$scope.nganhs=response.data;
	});

	$scope.ddlNganh="0";

	$scope.ShowButtonInsert =function(){
		//$scope.showInsert=0;
		$scope.showInsert=1;
		$scope.MaLoai="";
		$scope.TenLoai="";
		$scope.ddlNganh="0";
	};

	$scope.UpdsNganh=function(x,y,z){
		console.log(x);
		$scope.showInsert=2;
		$scope.MaLoai=x;
		$scope.TenLoai=y;
		$scope.ddlNganh=z;

	};

	$http.get('index.php?r=admin/OitbJson').then(function(response){
		$scope.products=response.data;
	});



	// insert update delete record
	$scope.InsU_NG= function(){
		if ($scope.showInsert==1) {
			console.log('insert');
			$http.get('index.php?r=admin/InsertOitbJson&MaLoai='+Utils.isUndefinedOrNull($scope.MaLoai)+'&TenLoai='+Utils.isUndefinedOrNull($scope.TenLoai)+'&MaNganh='+Utils.isUndefinedOrNull($scope.ddlNganh)).then(function(response){
				if (response.data>=1) {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Thêm thành công Loại : '+ Utils.isUndefinedOrNull($scope.MaLoai)+'!', 'alert-success');

			    	$http.get('index.php?r=admin/OitbJson').then(function(response){
						$scope.products=response.data;
					});
			    }else
			    {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Thêm thất bại!', 'alert-error');
			    }
			});	
		}
		else if ($scope.showInsert==2){
			console.log('update');
			$http.get('index.php?r=admin/UpdateOitbJson&MaLoai='+Utils.isUndefinedOrNull($scope.MaLoai)+'&TenLoai='+Utils.isUndefinedOrNull($scope.TenLoai)+'&MaNganh='+Utils.isUndefinedOrNull($scope.ddlNganh)).then(function(response){
				if (response.data>=1) {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Cập Nhật thành công Ngành : '+ Utils.isUndefinedOrNull($scope.MaLoai)+'!', 'alert-success');

			    	$http.get('index.php?r=admin/OitbJson').then(function(response){
						$scope.products=response.data;
					});
			    }else
			    {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Cập Nhật thất bại!', 'alert-error');
			    }
			});	
		}
		
	};

	$scope.delete=function (x){
		$http.get('index.php?r=admin/DeleteOitbJson&MaLoai='+Utils.isUndefinedOrNull(x)).then(function(response){

			if (response.data>=1) {
		    	console.log(response.data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Xóa thành công Loại : '+ Utils.isUndefinedOrNull(x)+'!', 'alert-success');

		    	$http.get('index.php?r=admin/OitbJson').then(function(response){
					$scope.products=response.data;
				});
		    }else
		    {
		    	console.log(response.data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Xóa thất bại!', 'alert-error');
		    }
		});
	};
});




App.controller("mycontrollerormc",function ($scope,$http,$location,Utils,alertsManager) {
	$scope.alerts = alertsManager.alerts;
	alertsManager.clearAlerts();


	$http.get('index.php?r=admin/OrmcJson').then(function(response){
		$scope.products=response.data;
	});

	$scope.showInsert=0;


	$scope.ShowButtonInsert =function(){
		//$scope.showInsert=0;
		$scope.showInsert=1;
		$scope.MaNhan="";
		$scope.TenNhan="";
	};

	$scope.UpdsNganh=function(x,y){
		console.log(x);
		$scope.showInsert=2;
		$scope.MaNhan=x;
		$scope.TenNhan=y;

	};

	
	$scope.InsU_NG= function(){
		
		if ($scope.showInsert==1) {
			console.log('insert');
			$http.get('index.php?r=admin/InsertOrmcJson&MaNhan='+Utils.isUndefinedOrNull($scope.MaNhan)+'&TenNhan='+Utils.isUndefinedOrNull($scope.TenNhan)).then(function(response){
				if (response.data>=1) {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Thêm thành công Nhãn : '+ Utils.isUndefinedOrNull($scope.MaNhan)+'!', 'alert-success');

			    	$http.get('index.php?r=admin/OrmcJson').then(function(response){
						$scope.products=response.data;
					});
			    }else
			    {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Thêm thất bại!', 'alert-error');
			    }
			});	
		}
		else if ($scope.showInsert==2){
			console.log('update');
			$http.get('index.php?r=admin/UpdateOrmcJson&MaNhan='+Utils.isUndefinedOrNull($scope.MaNhan)+'&TenNhan='+Utils.isUndefinedOrNull($scope.TenNhan)).then(function(response){
				if (response.data>=1) {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Cập Nhật thành công Nhãn : '+ Utils.isUndefinedOrNull($scope.MaNhan)+'!', 'alert-success');

			    	$http.get('index.php?r=admin/OrmcJson').then(function(response){
						$scope.products=response.data;
					});
			    }else
			    {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Cập Nhật thất bại!', 'alert-error');
			    }
			});	
		}
		
	};

	$scope.delete=function (x){
		$http.get('index.php?r=admin/DeleteOrmcJson&MaNhan='+Utils.isUndefinedOrNull(x)).then(function(response){

			if (response.data>=1) {
		    	console.log(response.data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Xóa thành công Nhãn : '+ Utils.isUndefinedOrNull(x)+'!', 'alert-success');

		    	$http.get('index.php?r=admin/OrmcJson').then(function(response){
					$scope.products=response.data;
				});
		    }else
		    {
		    	console.log(response.data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Xóa thất bại!', 'alert-error');
		    }
		});
	};



});



App.controller("mycontrollerslide",function ($scope,$http,$location,Utils,alertsManager) {
	$scope.alerts = alertsManager.alerts;
	alertsManager.clearAlerts();


	$http.get('index.php?r=admin/SlideJson').then(function(response){
		$scope.products=response.data;
	});


	$scope.ShowButtonInsert =function(){
		//$scope.showInsert=0;
		$scope.showInsert=1;
		$scope.Caption="";
		$scope.Link="";
		$scope.Active="";
		$scope.ID="";
	};

	$scope.UpdsNganh=function(x,y,z,a){
		$scope.showInsert=2;
		console.log(x);
		$scope.ID=x;
		$scope.Caption=y;
		$scope.Link=z;
		$scope.Active=a;
		

	};

	
	$scope.InsU_NG= function(){
		
		if ($scope.showInsert==1) {
			console.log('insert');
			$http.get('index.php?r=admin/InsertSliderJson&Caption='+Utils.isUndefinedOrNull($scope.Caption)+'&Link='+Utils.isUndefinedOrNull($scope.Link)+'&Active='+Utils.isUndefinedOrNull($scope.Active)).then(function(response){
				if (response.data>=1) {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Thêm thành công Slider : '+ Utils.isUndefinedOrNull($scope.MaNhan)+'!', 'alert-success');

			    	$http.get('index.php?r=admin/SlideJson').then(function(response){
						$scope.products=response.data;
					});
			    }else
			    {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Thêm thất bại!', 'alert-error');
			    }
			});	
		}
		else if ($scope.showInsert==2){
			console.log('update');
			$http.get('index.php?r=admin/UpdateSliderJson&Caption='+Utils.isUndefinedOrNull($scope.Caption)+'&Link='+Utils.isUndefinedOrNull($scope.Link)+'&Active='+Utils.isUndefinedOrNull($scope.Active)+'&ID='+Utils.isUndefinedOrNull($scope.ID)).then(function(response){
				if (response.data>=1) {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Cập Nhật thành công Slider : '+ Utils.isUndefinedOrNull($scope.MaNhan)+'!', 'alert-success');

			    	$http.get('index.php?r=admin/SlideJson').then(function(response){
						$scope.products=response.data;
					});
			    }else
			    {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Cập Nhật thất bại!', 'alert-error');
			    }
			});	
		}
		
	};

	$scope.delete=function (x){
		$http.get('index.php?r=admin/DeleteSliderJson&ID='+Utils.isUndefinedOrNull(x)).then(function(response){

			if (response.data>=1) {
		    	console.log(response.data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Xóa thành công Slider : '+ Utils.isUndefinedOrNull(x)+'!', 'alert-success');

		    	$http.get('index.php?r=admin/SlideJson').then(function(response){
					$scope.products=response.data;
				});
		    }else
		    {
		    	console.log(response.data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Xóa thất bại!', 'alert-error');
		    }
		});
	};

});



App.controller("mycontrollerLinkHinh",function ($scope,$http,$location,Utils,alertsManager) {
	$scope.alerts = alertsManager.alerts;
	alertsManager.clearAlerts();


	$http.get('index.php?r=admin/LinkHinhJson').then(function(response){
		$scope.products=response.data;
	});


	$scope.ShowButtonInsert =function(){
		//$scope.showInsert=0;
		$scope.showInsert=1;
		$scope.Caption="";
		$scope.Link="";
		$scope.MaSP="";
		$scope.ID="";
	};

	$scope.UpdsNganh=function(x,y,z,a){
		$scope.showInsert=2;
		console.log(x);
		$scope.ID=x;
		$scope.MaSP=y;
		$scope.Link=z;
		$scope.Caption=a;
		
		

	};

	
	$scope.InsU_NG= function(){
		
		if ($scope.showInsert==1) {
			console.log('insert');
			$http.get('index.php?r=admin/InsertLinkHinhJson&Caption='+Utils.isUndefinedOrNull($scope.Caption)+'&Link='+Utils.isUndefinedOrNull($scope.Link)+'&MaSP='+Utils.isUndefinedOrNull($scope.MaSP)).then(function(response){
				if (response.data>=1) {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Thêm thành công : '+ response.data+'!', 'alert-success');

			    	$http.get('index.php?r=admin/LinkHinhJson').then(function(response){
						$scope.products=response.data;
					});
			    }else
			    {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Thêm thất bại!', 'alert-error');
			    }
			});	
		}
		else if ($scope.showInsert==2){
			console.log('update');
			$http.get('index.php?r=admin/UpdateLinkHinhJson&Caption='+Utils.isUndefinedOrNull($scope.Caption)+'&Link='+Utils.isUndefinedOrNull($scope.Link)+'&MaSP='+Utils.isUndefinedOrNull($scope.MaSP)+'&ID='+Utils.isUndefinedOrNull($scope.ID)).then(function(response){
				if (response.data>=1) {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Cập Nhật thành công : '+ Utils.isUndefinedOrNull($scope.ID)+'!', 'alert-success');

			    	$http.get('index.php?r=admin/LinkHinhJson').then(function(response){
						$scope.products=response.data;
					});
			    }else
			    {
			    	console.log(response.data);
			    	//alertsManager.clearAlerts();
			    	alertsManager.addAlert('Cập Nhật thất bại!', 'alert-error');
			    }
			});	
		}
		
	};

	$scope.delete=function (x){
		$http.get('index.php?r=admin/DeleteLinkHinhJson&ID='+Utils.isUndefinedOrNull(x)).then(function(response){

			if (response.data>=1) {
		    	console.log(response.data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Xóa thành công ID : '+ Utils.isUndefinedOrNull(x)+'!', 'alert-success');

		    	$http.get('index.php?r=admin/LinkHinhJson').then(function(response){
					$scope.products=response.data;
				});
		    }else
		    {
		    	console.log(response.data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Xóa thất bại!', 'alert-error');
		    }
		});
	};

});



App.controller("mycontrollerInsertOITM",function ($scope,$http,$location,Utils,alertsManager) {
	$scope.upsd=0;

	$scope.alerts = alertsManager.alerts;
	alertsManager.clearAlerts();

	$http.get('index.php?r=admin/NganhJson').then(function(response){
		$scope.nganhs=response.data;
	});
	$http.get('index.php?r=admin/LoaiJson').then(function(response){
		$scope.loais=response.data;
	});
	$http.get('index.php?r=admin/NhanJson').then(function(response){
		$scope.nhans=response.data;
	});

	$scope.ddlNhan="0";

	$scope.ddlLoai="0";

	$scope.ddlNganh="0";

	$scope.ddlQLTonKho="0";

	$scope.ddlQLSerial="0";

	$scope.submitForm = function(){
		//console.log('log');
		//console.log(Utils.isUndefinedOrNull($scope.ChieuDai));	
		//console.log($scope.ChieuDai);	
		var request = $http({
			    method: "post",
			    //url: $location.path("index.php?r=admin/AuLogin"),
			    url: "index.php?r=admin/InsertOitmJson",
			    data: {
			        MaSP: $scope.MaSP,
			        TenSP: $scope.TenSP,
			        Gia: $scope.Gia,
			        Link: $scope.Link,
			        TinhTrang: $scope.TinhTrang,
			        ddlNganh: $scope.ddlNganh,
			        ddlLoai: $scope.ddlLoai,
			        ddlNhan: $scope.ddlNhan,
			        SuDung: $scope.SuDung,
			        TenVietTat: $scope.TenVietTat,
			        MoTa: $scope.MoTa,
			        ddlQLTonKho: $scope.ddlQLTonKho,
			        ddlQLSerial: $scope.ddlQLSerial,
			        ChieuDai: Utils.isUndefinedOrNull($scope.ChieuDai),
			        CanNang: Utils.isUndefinedOrNull($scope.CanNang),
			        DoSau: Utils.isUndefinedOrNull($scope.DoSau),
			        Lure: Utils.isUndefinedOrNull($scope.Lure),
			        Line: Utils.isUndefinedOrNull($scope.Line),
			        PE: Utils.isUndefinedOrNull($scope.PE),
			        Ring: Utils.isUndefinedOrNull($scope.Ring),
			        Hook: Utils.isUndefinedOrNull($scope.Hook),
			        SoKhoen: Utils.isUndefinedOrNull($scope.SoKhoen),
			        Khoen: Utils.isUndefinedOrNull($scope.Khoen),
			        Blank: Utils.isUndefinedOrNull($scope.Blank),
			        Bu: Utils.isUndefinedOrNull($scope.Bu),
			        Pat: Utils.isUndefinedOrNull($scope.Pat),
			        Tua: Utils.isUndefinedOrNull($scope.Tua),
			        Thang: Utils.isUndefinedOrNull($scope.Thang),
			        BacDan: Utils.isUndefinedOrNull($scope.BacDan),
			        CongNghe: Utils.isUndefinedOrNull($scope.CongNghe),
			        Size: Utils.isUndefinedOrNull($scope.Size),
			        LoaiDay: Utils.isUndefinedOrNull($scope.LoaiDay),
			        BaiViet: Utils.isUndefinedOrNull($scope.BaiViet)

			    },
			    headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
			});

		request.success(function (data) {
		    if (data==1) {
		    	console.log(data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Thêm thành công sản phẩm : '+ $scope.MaSP+'!', 'alert-success');
		    }else
		    {
		    	console.log(data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Thêm thất bại!', 'alert-error');
		    }
		});
	};

});



App.controller("mycontrollerEditOITM",function ($scope,$http,$location,Utils,$routeParams,alertsManager) {

	$scope.upsd=1;

	$scope.alerts = alertsManager.alerts;
	alertsManager.clearAlerts();

	$http.get('index.php?r=admin/NganhJson').then(function(response){
		$scope.nganhs=response.data;
	});
	$http.get('index.php?r=admin/LoaiJson').then(function(response){
		$scope.loais=response.data;
	});
	$http.get('index.php?r=admin/NhanJson').then(function(response){
		$scope.nhans=response.data;
	});

	$scope.ddlNhan="0";

	$scope.ddlLoai="0";

	$scope.ddlNganh="0";

	$scope.ddlQLTonKho="0";

	$scope.ddlQLSerial="0";
	console.log($routeParams.MaSP);
	$http.get('index.php?r=admin/ProductDetailJson&MaSP='+$routeParams.MaSP).then(function(response){
		var Prodcuts=response.data;

		$scope.MaSP=Prodcuts.MaSP;
			        $scope.TenSP=Prodcuts.TenSP;
			        $scope.Gia=Prodcuts.Gia;
			        $scope.Link=Prodcuts.Link;
			        $scope.TinhTrang=Prodcuts.TinhTrang;
			        $scope.ddlNganh=Prodcuts.MaNganh;
			        $scope.ddlLoai=Prodcuts.MaLoai;
			        $scope.ddlNhan=Prodcuts.MaNhan;
			        $scope.SuDung=Prodcuts.SuDung;
			        $scope.TenVietTat=Prodcuts.TenVietTat;
			        $scope.MoTa=Prodcuts.MoTa;
			        $scope.ddlQLTonKho=Prodcuts.QLTonKho;
			        $scope.ddlQLSerial=Prodcuts.QLSerial;
			        $scope.ChieuDai=Prodcuts.ChieuDai;
			        $scope.CanNang=Prodcuts.CanNang;
			        $scope.DoSau=Prodcuts.DoSau;
			        $scope.Lure=Prodcuts.Lure;
			        $scope.Line=Prodcuts.Line;
			        $scope.PE=Prodcuts.PE;
			        $scope.Ring=Prodcuts.Ring;
			        $scope.Hook=Prodcuts.Hook;
			        $scope.SoKhoen=Prodcuts.SoKhoen;
			        $scope.Khoen=Prodcuts.Khoen;
			        $scope.Blank=Prodcuts.Blank;
			        $scope.Bu=Prodcuts.Bu;
			        $scope.Pat=Prodcuts.Pat;
			        $scope.Tua=Prodcuts.Tua;
			        $scope.Thang=Prodcuts.Thang;
			        $scope.BacDan=Prodcuts.BacDan;
			        $scope.CongNghe=Prodcuts.CongNghe;
			        $scope.Size=Prodcuts.Size;
			        $scope.LoaiDay=Prodcuts.LoaiDay;
			        $scope.BaiViet=Prodcuts.BaiViet;
	});



	$scope.submitForm = function(){
		$scope.alerts = alertsManager.alerts;
		var request = $http({
			    method: "post",
			    url: "index.php?r=admin/UpdateOitmJson",
			    data: {
			        MaSP: $scope.MaSP,
			        TenSP: $scope.TenSP,
			        Gia: $scope.Gia,
			        Link: $scope.Link,
			        TinhTrang: $scope.TinhTrang,
			        ddlNganh: $scope.ddlNganh,
			        ddlLoai: $scope.ddlLoai,
			        ddlNhan: $scope.ddlNhan,
			        SuDung: $scope.SuDung,
			        TenVietTat: $scope.TenVietTat,
			        MoTa: $scope.MoTa,
			        ddlQLTonKho: $scope.ddlQLTonKho,
			        ddlQLSerial: $scope.ddlQLSerial,
			        ChieuDai: Utils.isUndefinedOrNull($scope.ChieuDai),
			        CanNang: Utils.isUndefinedOrNull($scope.CanNang),
			        DoSau: Utils.isUndefinedOrNull($scope.DoSau),
			        Lure: Utils.isUndefinedOrNull($scope.Lure),
			        Line: Utils.isUndefinedOrNull($scope.Line),
			        PE: Utils.isUndefinedOrNull($scope.PE),
			        Ring: Utils.isUndefinedOrNull($scope.Ring),
			        Hook: Utils.isUndefinedOrNull($scope.Hook),
			        SoKhoen: Utils.isUndefinedOrNull($scope.SoKhoen),
			        Khoen: Utils.isUndefinedOrNull($scope.Khoen),
			        Blank: Utils.isUndefinedOrNull($scope.Blank),
			        Bu: Utils.isUndefinedOrNull($scope.Bu),
			        Pat: Utils.isUndefinedOrNull($scope.Pat),
			        Tua: Utils.isUndefinedOrNull($scope.Tua),
			        Thang: Utils.isUndefinedOrNull($scope.Thang),
			        BacDan: Utils.isUndefinedOrNull($scope.BacDan),
			        CongNghe: Utils.isUndefinedOrNull($scope.CongNghe),
			        Size: Utils.isUndefinedOrNull($scope.Size),
			        LoaiDay: Utils.isUndefinedOrNull($scope.LoaiDay),
			        BaiViet: Utils.isUndefinedOrNull($scope.BaiViet)

			    },
			    headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
			});

		request.success(function (data) {
		    if (data>=1) {
		    	console.log(data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Cập nhật thành công!', 'alert-success');
		    }else
		    {
		    	console.log(data);
		    	//alertsManager.clearAlerts();
		    	alertsManager.addAlert('Cập nhật thất bại!', 'alert-error');
		    }
		});
	};

});



App.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl:'index.php?r=admin/PartialIndex'
      }).
      when('/OITM', {
        templateUrl: 'index.php?r=admin/Oitm',
        controller: 'mycontrolleroitm'
      })
      .when('/OITM/Insert', {
        templateUrl: 'index.php?r=admin/InsertOITM',
        controller: 'mycontrollerInsertOITM'
      })
      .when('/OITM/:MaSP', {
        templateUrl: 'index.php?r=admin/InsertOITM',
        controller: 'mycontrollerEditOITM'
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
      .when('/QLHS', {
        templateUrl: 'index.php?r=admin/LinkHinh',
        controller: 'mycontrollerLinkHinh'
      })
  }]).constant('FIREBASE_URL', 'something');;



App.filter('startFrom',function (){
	return function	(data,start){
		if (!data || !data.length) { return; }
		return data.slice(start);
	}
});

App.directive('ckEditor', function () {
    return {
        require: '?ngModel',
        link: function (scope, elm, attr, ngModel) {
            var ck = CKEDITOR.replace(elm[0]);
            if (!ngModel) return;
            ck.on('instanceReady', function () {
                ck.setData(ngModel.$viewValue);
            });
            function updateModel() {
                scope.$apply(function () {
                ngModel.$setViewValue(ck.getData());
            });
        }
        ck.on('change', updateModel);
        ck.on('key', updateModel);
        ck.on('dataReady', updateModel);

        ngModel.$render = function (value) {
            ck.setData(ngModel.$viewValue);
        };
    }
};
});



App.factory('Utils', function() {
  var service = {
     isUndefinedOrNull: function(obj) {
     	if (!angular.isDefined(obj) || obj===null) {
     		//console.log("null");
     		return "";	
     	}
        else{
        	//console.log("1");
        	return obj;

        }
    }
    
  }
  return service;
});


App.factory('alertsManager', function() {
    return {
        alerts: {},
        addAlert: function(message, type) {
            this.alerts[type] = this.alerts[type] || [];
            this.alerts[type].push(message);
        },
        clearAlerts: function() {
            for(var x in this.alerts) {
           delete this.alerts[x];
        }
        }
    };
});



App.directive('username', function($q, $timeout,$http) {
  return {
    require: 'ngModel',
    link: function(scope, elm, attrs, ctrl) {
      //var usernames = ['Jim', 'John', 'Jill', 'Jackie'];

      ctrl.$asyncValidators.username = function(modelValue, viewValue) {

        if (ctrl.$isEmpty(modelValue)) {
          // consider empty model valid
          return $q.when();
        }

        var def = $q.defer();
		if(modelValue.length >4){
	        $timeout(function() {
	          // Mock a delayed response
	          //var userscheck=0;

	          $http.get('index.php?r=admin/CheckMaSPOitmJson&MaSP='+modelValue).then(function(response){
					//userscheck=response.data;
					//console.log(userscheck);
					  if (response.data == 0) {
			            // The username is available
			            def.resolve();
			          } else {
			            def.reject();
			          }
			  });
	        
	        

	        }, 1000);
    	}else{
    		def.resolve();
    	}

        return def.promise;
      };
    }
  };
});