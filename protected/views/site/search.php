

<div class="span9">		
		<h4>Kết Quả</h4>
			  <ul class="thumbnails">
				<li class="span3" ng-repeat="pro in products">
				  <div class="thumbnail">
					<a  href="product_details.html"><img src="{{pro.Link}}" alt=""/></a>
					<div class="caption">
					  <h5>Product name</h5>
					  {{pro.link}}
					  <p> 
						{{pro.TenSP}}
					  </p>
					  <h5 style="text-align:center" clicktotop> <a class="btn" href="#/ProductDetail/{{pro.MaSP}}">Chi Tiết</a> <a class="btn btn-primary" href="#">{{pro.Gia | number}} VND</a></h5>
					</div>
				  </div>
				</li>

			  </ul>	

		</div>