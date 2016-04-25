<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="language" content="en">


	<!-- blueprint CSS framework -->
	

	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection">
	<![endif]-->


	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/bootstrap-responsive.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/themes/css/base.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/themes/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/themes/js/google-code-prettify/prettify.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/themes/switch/themeswitch.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/angular-bootstrap-lightbox.min.css">

	
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css">
	<?php 
			$baseUrl = Yii::app()->baseUrl; 
			$js = Yii::app()->getClientScript();
			//$js->registerScriptFile($baseUrl.'/js/jquery-1.12.3.min.js');
			$js->registerScriptFile($baseUrl.'/js/jquery.js');
			$js->registerScriptFile($baseUrl.'/js/jquery-ui.js');
			$js->registerScriptFile($baseUrl.'/js/angular.min.js');
			$js->registerScriptFile($baseUrl.'/js/angular-route.js');
			$js->registerScriptFile($baseUrl.'/js/bootstrap.min.js');
			$js->registerScriptFile($baseUrl.'/js/ui-bootstrap-tpls-1.3.2.min.js');
			$js->registerScriptFile($baseUrl.'/js/angular-bootstrap-lightbox.min.js');


			$js->registerScriptFile($baseUrl.'/themes/js/google-code-prettify/prettify.js');
			//$js->registerScriptFile($baseUrl.'/themes/js/jquery.lightbox-0.5.js');
			$js->registerScriptFile($baseUrl.'/themes/switch/theamswitcher.js');
			


			$js->registerScriptFile($baseUrl.'/js/script.js');
			$js->registerScriptFile($baseUrl.'/themes/js/bootshop.js');
 //echo $content; 
			
			?>
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body ng-app="myApp">
<div id="header">
<div class="container">

<!-- Navbar ================================================== -->

<div id="logoArea" class="navbar"  >
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner" ng-controller="mycontrollerSearch">
 		
    <a   class="brand" href="#/"><img style="    width: 120px;" src="images/slg1.jpg"  alt="LOGO"/></a>
 	

		<form class="form-inline navbar-search" method="post" >
		<input id="txtTenSP"  type="text" ng-model="txtTenSP" autocomplete  />
		<select ng-model="drlMaNganh" >
			<option value="ALL" ng-selected="true" >ALL</option>	
			<option ng-repeat="ngg in nganhs" value="{{ngg.MaNganh}}" >{{ngg.TenNganh}}</option>	
		</select> 
	
	 
		  <button ng-click="search()" ng-model="nganh.submit" type="submit" id="submitButton" class="btn btn-primary">Go</button>
    </form>
    <ul id="topMenu" class="nav pull-right">
	 <!-- <li class=""><a href="special_offer.html">Specials Offer</a></li>
	 <li class=""><a href="normal.html">Delivery</a></li>
	 <li class=""><a href="contact.html">Contact</a></li>
	 <li class="">
	
	 <a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Login</span></a>
	<div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>Login Block</h3>
		  </div>
		  <div class="modal-body">
			<form class="form-horizontal loginFrm">
			  <div class="control-group">								
				<input type="text" id="inputEmail" placeholder="Email">
			  </div>
			  <div class="control-group">
				<input type="password" id="inputPassword" placeholder="Password">
			  </div>
			  <div class="control-group">
				<label class="checkbox">
				<input type="checkbox"> Remember me
				</label>
			  </div>
			</form>		
			<button type="submit" class="btn btn-success">Sign in</button>
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		  </div>
	</div>
	
	</li>-->
    </ul>
  </div>
</div>
</div>
</div>
<!-- Header End====================================================================== -->
<?php 
$curpage = Yii::app()->getController()->getAction()->controller->id;
$curpage .= '/'.Yii::app()->getController()->getAction()->controller->action->id;
//$curpage=="$curpage"

?>
<div id="carouselBlk">
	<div id="myCarousel" class="carousel slide">
		<div class="carousel-inner" ng-controller="mycontrollerSilder">
		  <div ng-repeat="sli in silder" class="item active" ng-if="sli.Active=='A'">
		  <div class="container" style="width:1170px;height:480px">
			<a href="#/"><img style="width:100%" ng-src="{{sli.Link}}"  alt="special offers"/></a>
			<div class="carousel-caption">
				  <h4>{{sli.Caption}}}</h4>
				  <p></p>
				</div>
		  </div>
		  </div>

		  <div ng-repeat="sli in silder" class="item" ng-if="sli.Active=='B'">
		  <div class="container" style="width:1170px;height:480px">
			<a href="#/"><img style="width:100%" ng-src="{{sli.Link}}"  alt="special offers"/></a>
			<div class="carousel-caption">
				  <h4>{{sli.Caption}}}</h4>
				  <p></p>
				</div>
		  </div>
		  </div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	  </div> 
</div>

<div id="mainBody" >
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3" ng-controller="mycontroller" >

		<ul ng-repeat="e in menu" id="sideManu" class="nav nav-tabs nav-stacked">
			<li class="subMenu" ><a > {{e.TenNganh}}</a>
				<ul style="display:none" >
					<li ng-repeat="es in e.records"  ><a href="#/ProdcutSearch/{{es.MaLoai}}"><i class="icon-chevron-right"></i>{{es.TenLoai}} </a></li>
				</ul>
			</li>
		</ul>

		<br/>
		  <div class="thumbnail" ng-repeat="left in productsListLeft">
			<img src="{{left.Link}}" alt=""/>
			<div class="caption">
			  <h5>{{left.TenSP}}}</h5>
				<h4 style="text-align:center" clicktotop><a class="btn" href="#/ProductDetail/{{left.MaSP}}"> <i class="icon-zoom-in"></i></a> <a class="btn btn-primary" href="#">{{left.Gia | number}} VND</a></h4>
			</div>
		  </div><br/>
		
			<div class="thumbnail">
				<img src="themes/images/payment_methods.png" title="Bootshop Payment Methods" alt="Payments Methods">
				<div class="caption">
				  <h5>Payment Methods</h5>
				</div>
			  </div>
	</div>
<!-- Sidebar end=============================================== -->
		<?php // echo $content; ?>
		 <div ng-view></div>
		</div>
	</div>
</div>
<!-- Footer ================================================================== -->
	<div  id="footerSection">
	<div class="container">
		<div class="row">
			<!--<div class="span3">
				<h5>ACCOUNT</h5>
				<a href="login.html">YOUR ACCOUNT</a>
				<a href="login.html">PERSONAL INFORMATION</a> 
				<a href="login.html">ADDRESSES</a> 
				<a href="login.html">DISCOUNT</a>  
				<a href="login.html">ORDER HISTORY</a>
			 </div>
			<div class="span3">
				<h5>INFORMATION</h5>
				<a href="contact.html">CONTACT</a>  
				<a href="register.html">REGISTRATION</a>  
				<a href="legal_notice.html">LEGAL NOTICE</a>  
				<a href="tac.html">TERMS AND CONDITIONS</a> 
				<a href="faq.html">FAQ</a>
			 </div>
			<div class="span3">
				<h5>OUR OFFERS</h5>
				<a href="#">NEW PRODUCTS</a> 
				<a href="#">TOP SELLERS</a>  
				<a href="special_offer.html">SPECIAL OFFERS</a>  
				<a href="#">MANUFACTURERS</a> 
				<a href="#">SUPPLIERS</a> 
			 </div>
			-->
			<div class="span3">
				<h5>nghoangtuan92@gmail.com</h5>
			 </div>
			<div id="socialMedia" class="span3 pull-right">
				<h5>SOCIAL MEDIA </h5>
				<a href="#"><img width="60" height="60" src="themes/images/facebook.png" title="facebook" alt="facebook"/></a>
				<a href="#"><img width="60" height="60" src="themes/images/twitter.png" title="twitter" alt="twitter"/></a>
				<a href="#"><img width="60" height="60" src="themes/images/youtube.png" title="youtube" alt="youtube"/></a>
			 </div> 
		 </div>
		<p class="pull-right">&copy; Bootshop</p>
	</div><!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="themes/js/jquery.js" type="text/javascript"></script>
	<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="themes/js/google-code-prettify/prettify.js"></script>
	
	<script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>
	
	<!-- Themes switcher section ============================================================================================= -->
<div id="secectionBox">
<link rel="stylesheet" href="themes/switch/themeswitch.css" type="text/css" media="screen" />
<script src="themes/switch/theamswitcher.js" type="text/javascript" charset="utf-8"></script>
	<div id="themeContainer">
	<div id="hideme" class="themeTitle">FaceBook</div>
	
	</div>
</div>
<span id="themesBtn"></span>

</body>
</html>
