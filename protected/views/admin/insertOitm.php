<div class="box-body" style="font-family:arial ">

              <div ng-repeat="(key,val) in alerts" class="alert {{key}}">
                <div ng-repeat="msg in val">{{msg}}</div>
              </div>

<form  role="form" name="myForm" ng-submit="submitForm()" >
<div class="box-header with-border">

              <h3 class="box-title">Sản Phẩm</h3>
              <div class="pull-right box-tools">
                    
                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Remove">Thoát</button>
                    <input type="submit" class="btn btn-info btn-sm" value=" Lưu ">
              </div>
</div>


    <div class="col-md-6">
      <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Thông Tin Sản Phẩm</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                
                  <div class="box-body">
                    <div class="form-group" >
                      <label for="exampleInputEmail1">Mã Sản Phẩm</label>
                      <input username type="text" class="form-control" name="MaSP"  placeholder="Nhập Mã Sản Phẩm" ng-model="MaSP" required ng-disabled="upsd==1" >
                      <p style="margin: 0px" class="text-red" ng-show="myForm.MaSP.$error.required && !myForm.MaSP.$pristine" class="help-block">Vui lòng 
                      nhập mã sản phẩm.</p>
                      <div ng-if="upsd==0">
                        <p style="margin: 0px" class="text-red" ng-show="myForm.MaSP.$pending.username ">Checking ...</p>
                        <p style="margin: 0px" class="text-red" ng-show="myForm.MaSP.$error.username ">Mã Sản Phẩm Đã Tồn Tại</p>
                      </div>
                       <p style="margin: 0px" class="text-red" ng-show="MaSP.length <= 4">Vui lòng nhập lớn hơn 4 ký tự</p>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Tên Sản Phẩm</label>
                      <input type="text" class="form-control" name="TenSP"  placeholder="Nhập Tên Sản Phẩm" ng-model="TenSP" required>
                       <p class="text-red" ng-show="myForm.TenSP.$invalid && !myForm.TenSP.$pristine" class="help-block">Vui lòng nhập tên sản phẩm.</p>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Giá</label>
                      <input type="text" class="form-control" name="Gia"  placeholder="Nhập Giá Sản Phẩm" ng-model="Gia " required>
                      <p class="text-red" ng-show="myForm.Gia.$invalid && !myForm.Gia.$pristine" class="help-block">Vui lòng nhập giá sản phẩm.</p>

                    </div>
                    <div class="form-group">
                      <label for="exampleInputFile">Chọn Hình Đại Diện</label>
                      <input type="text" class="form-control" name="Link"  placeholder="Nhập Giá Sản Phẩm" ng-model="Link" required>
                      <p class="text-red" ng-show="myForm.Gia.$invalid && !myForm.Gia.$pristine" class="help-block">Vui lòng nhập Link hình ảnh sản phẩm.</p>
                      <!--<input type="file" id="exampleInputFile" ng-model="Link">-->
                     <!-- <p class="help-block">Example block-level help text here.</p>-->

                    </div>
                   <div class="form-group">
                      <label for="exampleInputFile">Tình Trạng Máy</label>
                      <input type="text" class="form-control" placeholder="Nhập Tình Trạng Máy" name="TinhTrang" ng-model="TinhTrang" required>
                      <p class="text-red" ng-show="myForm.TinhTrang.$invalid && !myForm.TinhTrang.$pristine" class="help-block">Vui lòng nhập tình trạng sản phẩm.</p>
                    </div>
                 
                  <div class="form-group">
                      <label for="exampleInputEmail1">Ngành</label>
                      <select class="form-control" ng-model="ddlNganh" >
                        <option value="0" ng-selected="true" >Vui lòng chọn Ngành</option>  
                        <option ng-repeat="ngg in nganhs" value="{{ngg.MaNganh}}" >{{ngg.TenNganh}}</option>  
                      </select> 
                  </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1">Loại</label>
                      <select class="form-control" ng-model="ddlLoai" >
                        <option value="0" ng-selected="true" >Vui lòng chọn Loại</option>  
                        <option ng-repeat="ngg in loais" value="{{ngg.MaLoai}}" >{{ngg.TenLoai}}</option>  
                      </select> 
                  </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1">Nhãn</label>
                      <select class="form-control" ng-model="ddlNhan" >
                        <option value="0" ng-selected="true" >Vui lòng chọn Nhãn</option>  
                        <option ng-repeat="ngg in nhans" value="{{ngg.MaNhan}}" >{{ngg.TenNhan}}</option>  
                      </select> 
                  </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1">Sử dụng</label>
                      <input type="text" class="form-control" placeholder="Sử Dụng" name="SuDung" ng-model="SuDung" required>
                      <p class="text-red" ng-show="myForm.SuDung.$invalid && !myForm.SuDung.$pristine" class="help-block">Vui lòng nhập</p>
                  </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1">Tên Viết Tắt</label>
                      <input type="text" class="form-control"  placeholder="Tên Viết Tắt" name="TenVietTat" ng-model="TenVietTat" required>
                      <p class="text-red" ng-show="myForm.TenVietTat.$invalid && !myForm.TenVietTat.$pristine" class="help-block">Vui lòng nhập tên viết tắt</p>
                  </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1">Mô Tả</label>
                      <textarea class="form-control" rows="3" placeholder="Enter ..." name="MoTa" ng-model="MoTa" required=""></textarea>
                      <p class="text-red" ng-show="myForm.MoTa.$invalid && !myForm.MoTa.$pristine" class="help-block">Vui lòng nhập tên viết tắt</p>
                  </div>
                   <div class="form-group">
                      <label for="exampleInputEmail1">Quản Lý Tồn Kho</label>
                      <select class="form-control" ng-model="ddlQLTonKho" >
                        <option value="0" ng-selected="true" >Có</option>  
                        <option value="1" >Không</option>  
                      </select> 
                  </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1">Quản Lý Serial</label>
                      <select class="form-control" ng-model="ddlQLSerial" >
                        <option value="0" ng-selected="true" >Có</option>  
                        <option value="1" >Không</option>  
                      </select> 
                  </div>

                  </div><!-- /.box-body -->

                  
           
              </div>
    </div>
    <div class="col-md-6">
      <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">Thông Số Sản Phẩm</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <div class="form-horizontal">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Chiều Dài</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Chiều Dài" ng-model="ChieuDai">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Cân nặng</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" placeholder="Cân nặng" ng-model="CanNang">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Độ Sâu</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Độ Sâu" ng-model="DoSau">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Lure</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Lure" ng-model="Lure">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Line</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Line" ng-model="Line">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">PE</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="PE" ng-model="PE">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Ring</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Ring" ng-model="Ring">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Hook</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Hook" ng-model="Hook">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Số Khoen</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Số Khoen" ng-model="SoKhoen">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Khoen</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Khoen" ng-model="Khoen">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Blank</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Blank" ng-model="Blank">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Bu</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Bu" ng-model="Bu">
                      </div>
                    </div> 
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Pat</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Pat" ng-model="Pat">
                      </div>
                    </div> 
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Tua</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Tua" ng-model="Tua">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Thang</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Thang" ng-model="Thang">
                      </div>
                    </div>  
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Bặc Đạn</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="BacDan" ng-model="BacDan">
                      </div>
                    </div>  
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Công Nghệ</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="CongNghe" ng-model="CongNghe">
                      </div>
                    </div> 
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Size</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="Size" ng-model="Size">
                      </div>
                    </div> 
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Loại Dây</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control"  placeholder="LoaiDay" ng-model="LoaiDay">
                      </div>
                    </div> 
                   
                  </div><!-- /.box-body -->
               </div>
                
              </div>
    </div>



    <div style="  clear: both;"> 
      Thêm Bài Viết:
      <textarea ckeditor="editorOptions" ng-model="BaiViet">
        
    </textarea></div>
   
   </form>
</div>