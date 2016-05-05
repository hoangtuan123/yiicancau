
<section class="content">

  <div ng-repeat="(key,val) in alerts" class="alert {{key}}">
                <div ng-repeat="msg in val">{{msg}}</div>
              </div>

          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Danh Mục Sản Phẩm</h3>
                  <div style="width: 50px;margin-top: 10px;"><a style="margin-bottom: 0px" href="#/OITM/Insert" class="btn btn-primary btn-block margin-bottom"><span class="glyphicon glyphicon-plus"></span></a></div>
                </div><!-- /.box-header -->
                <div class="box-body">


             <form method="get"  >
				<input class="form-control" id="txtTenSP"  type="text" ng-model="TenSP" placeholder="Nhập tên sản phẩm" style="float: left;width: 200px"  />
				<select class="form-control" ng-model="ddlNganh" style="float: left;width: 200px">
                        <option value="0" ng-selected="true" >Vui lòng chọn Ngành</option>  
                        <option ng-repeat="ngg in nganhs" value="{{ngg.MaNganh}}" >{{ngg.TenNganh}}</option>  
                </select>  
				 <select class="form-control" ng-model="ddlLoai" style="float: left;width: 200px" >
                        <option value="0" ng-selected="true" >Vui lòng chọn Loại</option>  
                        <option ng-repeat="ngg in loais" value="{{ngg.MaLoai}}" >{{ngg.TenLoai}}</option>  
                </select>  
				<select class="form-control" ng-model="ddlNhan" style="float: left;width: 200px" >
                        <option value="0" ng-selected="true" >Vui lòng chọn Nhãn</option>  
                        <option ng-repeat="ngg in nhans" value="{{ngg.MaNhan}}" >{{ngg.TenNhan}}</option>  
                </select> 
				<button ng-click="search()" ng-model="submit" type="submit" id="submitButton" class="btn btn-primary">Tìm Kiếm</button>
		    </form>
		    <br/>

				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>STT</th>
							<th>Mã Sản Phẩm</th>
							<th>Tên Sản Phẩm</th>
							<th>Tình Trạng</th>
							<th>Ngành</th>
							<th>Loại</th>
							<th>Nhãn</th>
							<th>Giá</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="pro in filtered = products | filter:TenSP:pro.TenSP | startFrom:(currentPage-1) * pageSize | limitTo:pageSize ">
							<td>{{(currentPage-1) * pageSize+$index + 1}}</td>
							<td><a href="#/OITM/{{pro.MaSP}}">{{pro.MaSP}}</a></td>
							<td>{{pro.TenSP}}</td>
							<td>{{pro.TinhTrang}}</td>
							<td>{{pro.TenNganh}}</td>
							<td>{{pro.TenLoai}}</td>
							<td>{{pro.TenNhan}}</td>
							<td>{{pro.Gia | number:0 }}</td>
							<td style="text-align: center;"><button class="btn btn-default btn-sm" ng-click="delete(pro.MaSP)"><i class="fa fa-trash-o"></i></button></td>
						</tr>
					</tbody>
				</table>
					<uib-pagination  total-items="totalItems" ng-model="currentPage" items-per-page="pageSize" 
					max-size="maxSize" class="pagination-sm" boundary-links="true" num-pages="numPages" rotate="false"
					></uib-pagination>
					
				</div>

			</div>
		</div>			
	</div>
</section>