
<section class="content">
 
  		<div ng-repeat="(key,val) in alerts track by $index" class="alert {{key}}">
                <div ng-repeat="msg in val track by $index">{{msg}}</div>
        </div>

          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Danh Mục Ngành</h3>
                </div><!-- /.box-header -->



                <div style="margin-left: 10px;">
                	<div style="width: 50px;margin-top: 10px;"><a ng-click="ShowButtonInsert()" style="margin-bottom: 0px"  class="btn btn-primary btn-block margin-bottom"><span class="glyphicon glyphicon-plus"></span></a></div>
                	<div ng-show="showInsert==1 || showInsert==2">
		                <input style="float: left;width: 200px;"  type="text" class="form-control" name="MaNganh"  placeholder="Nhập Mã Ngành" ng-model="MaNganh" ng-disabled="showInsert==2"  >
		               
						<input style="float: left;width: 200px;"  type="text" class="form-control" name="TenNganh"  placeholder="Nhập Tên Ngành" ng-model="TenNganh"  >
						
						<button style="float: left;height: 34px" ng-click="InsU_NG()" class="btn btn-info btn-sm" data-widget="Lưu" data-toggle="tooltip" title="" data-original-title="Lưu">Lưu</button>
					</div>
				</div>
                <div class="box-body">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>Mã Ngành</th>
							<th>Tên Ngành</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="pro in products">
							<td><a style="cursor: pointer;" ng-click="UpdsNganh(pro.MaNganh,pro.TenNganh)">{{pro.MaNganh}}</a></td>
							<td>{{pro.TenNganh}}</td>
							<td style="text-align: center;"><button class="btn btn-default btn-sm" ng-click="delete(pro.MaNganh)"><i class="fa fa-trash-o"></i></button></td>
						</tr>
					</tbody>
				</table>
				</div>
			</div>
		</div>			
	</div>
</section>