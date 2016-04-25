

<div class="span9">		

	<h4>Sản Phẩm Mới</h4>
			  <ul class="thumbnails" >
				<li class="span3" ng-repeat="pro in products">
				  <div class="thumbnail">
				  	  <i class="tag"></i>
					<a  href="#/ProductDetail/{{pro.MaSP}}"><img src="{{pro.Link}}" alt=""/></a>
					<div class="caption">
					  <h5>Product name</h5>
					  {{pro.link}}
					  <p> 
						{{pro.TenSP}}
					  </p>
					  <h5 style="text-align:center" clicktotop> <a  class="btn" href="#/ProductDetail/{{pro.MaSP}}">Chi Tiết</a> <a class="btn btn-primary" href="#">{{pro.Gia | number}} VND</a></h5>
					</div>
				  </div>
				</li>

			  </ul>	

			<div class="well well-small">
			<h4>Sản Phẩm Cũ Hơn<small class="pull-right">200+ Sản Phẩm</small></h4>
			<div class="row-fluid" style="height: 240px">
			<div id="featured" class="carousel slide">
			<div class="carousel-inner">
			  <div class="item active">
			  <ul class="thumbnails">
				<li class="span3" ng-repeat="plist in productsList">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<a href="#/ProductDetail/{{plist.MaSP}}"><img ng-src="{{plist.Link}}" alt=""></a>
					<div class="caption">
					  <h5>{{plist.TenSP}}</h5>
					  <h5 clicktotop>
					  	<a class="btn" href="#/ProductDetail/{{plist.MaSP}}" >Xem</a> <span class="pull-right" style="margin-top: 5px;" >{{plist.Gia | number}} VND</span>
					  </h5>
					</div>
				  </div>
				</li>
			  </ul>
			  </div>
			  <div class="item">
			  <ul class="thumbnails">
				<li class="span3" ng-repeat="plist in productsList">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<a href="#/ProductDetail/{{plist.MaSP}}"><img ng-src="{{plist.Link}}" alt=""></a>
					<div class="caption">
					  <h5>{{plist.TenSP}}</h5>
					  <h5 clicktotop>
					  	<a class="btn" href="#/ProductDetail/{{plist.MaSP}}">Xem</a> <span class="pull-right" style="margin-top: 5px;" >{{plist.Gia | number}} VND</span>
					  </h5>
					</div>
				  </div>
				</li>
			  </ul>
			  </div>
			  <div class="item">
			  <ul class="thumbnails">
				<li class="span3" ng-repeat="plist in productsList">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<a href="#/ProductDetail/{{plist.MaSP}}"><img ng-src="{{plist.Link}}" alt=""></a>
					<div class="caption">
					  <h5>{{plist.TenSP}}</h5>
					  <h5 clicktotop>
					  	<a class="btn" href="#/ProductDetail/{{plist.MaSP}}">Xem</a> <span class="pull-right" style="margin-top: 5px;" >{{plist.Gia | number}} VND</span>
					  </h5>
					</div>
				  </div>
				</li>
			  </ul>
			  </div>
			   <div class="item">
			  <ul class="thumbnails">
				<li class="span3" ng-repeat="plist in productsList">
				  <div class="thumbnail">
				
					<a href="#/ProductDetail/{{plist.MaSP}}"><img ng-src="{{plist.Link}}" alt=""></a>
					<div class="caption">
					  <h5>{{plist.TenSP}}</h5>
					  <h5 clicktotop><a class="btn" href="#/ProductDetail/{{plist.MaSP}}">Xem</a> <span class="pull-right" style="margin-top: 5px;" >{{plist.Gia | number}} VND</span></h5>
					</div>
				  </div>
				</li>
			  </ul>
			  </div>
			  </div>
		<!--	  <a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
			  <a class="right carousel-control" href="#featured" data-slide="next">›</a>-->
			  </div>
			  </div>
		</div>
	

		</div>