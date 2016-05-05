<?php

class AdminController extends Controller
{
	public $layout='//layouts/admin';
	/**
	 * Declares class-based actions.
	 */

	public function filters()
	{
	    return array(
	        'accessControl', // perform access control for CRUD operations
	    );
	}
	public function accessRules()
	{   
	    return array(
	        array('allow',
	            'actions'=>array('Index','Logout','GetMenu','Oitm','OitmJson','Oing','Oitb','Ormc','Slide','OingJson','OitbJson','OrmcJson','SlideJson','InsertOITM','NganhJson','LoaiJson','NhanJson','InsertOitmJson','ProductDetailJson','UpdateOitmJson','DeleteOitmJson','CheckMaSPOitmJson','InsertOingJson','DeleteOingJson','UpdateOingJson','InsertOitbJson','UpdateOitbJson','DeleteOitbJson','InsertOrmcJson','UpdateOrmcJson','DeleteOrmcJson','PartialIndex','InsertSliderJson','UpdateSliderJson','DeleteSliderJson','LinkHinh','LinkHinhJson','InsertLinkHinhJson','UpdateLinkHinhJson','DeleteLinkHinhJson'),
	            'roles'=>array('1'),
	        ),
	        array('allow',
	            'actions'=>array('Login','AuLogin'),
	            'users'=>array('*'),
	        ),
	        array('deny',  // deny all users
	            'users'=>array('*'),
	        ),
	    );
	}
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}



	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		//$records = Menu::model()->findAll();
		$this->render('index');
	}

	public function actionPartialIndex()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		//$records = Menu::model()->findAll();
		$this->renderPartial('index');
	}

	public function actionGetMenu()
	{
		//$menu = Menu::model()->findAll();  
		//$this->renderJSON($menu);

		$result="";

		$criteria_0= new CDbCriteria();
		$criteria_0->condition = 'ParentID=0';
		$result_menu = Menu::model()->findAll($criteria_0);
		
		for ($i=0;$i<count($result_menu);$i++){
				if ($result != "") {$result .= ",";}
				$result .= '{"ID":"'   .$result_menu[$i]['ID']. '",';
				$result .= '"Name":"'   .$result_menu[$i]['Name']. '",';
				$result .= '"LINK":"'   .$result_menu[$i]['LINK']. '",';
				
				$criteria = new CDbCriteria();
				$criteria->condition = 'ParentID=:ParentID';
				$criteria->params = array(':ParentID'=>$result_menu[$i]['ID']);

				if (Menu::model()->exists($criteria)) {
				    $post=Menu::model()->findAll(array(
				    'select'=>'ID,Name,LINK',
				    'condition'=>'ParentID='.$result_menu[$i]['ID'].'',
					));
					$sub="";
					for ($j=0;$j<count($post);$j++){
						if ($sub != "") {$sub .= ",";}
					    $sub .= '{"ID":"'  . $post[$j]['ID'] . '",';
					    $sub .= '"LINK":"'  . $post[$j]['LINK'] . '",';
					    $sub .= '"Name":"'   . $post[$j]['Name']        . '"}';
					}
					$result .= '"records":['   .$sub. ']}';	
				} else {
				   
					$result .= '"records":[' ."".']}';	
				}
		}
		echo '['.$result.']';
	}

	public function actionAuLogin()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		//$records = Menu::model()->findAll();
		//$this->renderPartial('login');

		$model=new LoginModel;

		// if it is ajax validation request
		//if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		//{
		//	echo CActiveForm::validate($model);
		//	Yii::app()->end();
		//}

		$postdata = file_get_contents("php://input");
	    $request = json_decode($postdata);
	    @$username = $request->username;
	    @$password = $request->password;

		// collect user input data
		if(isset($request))
		{
			$model->username=$username;
			$model->password=$password;

			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				$this->renderJSON(Yii::app()->user->getState('roles'));
			else 
				$this->renderJSON(0);
		}	

		
		//$this->renderJSON($request);
		// display the login form
		//$this->render('login',array('model'=>$model));
	}
	public function actionLogin()
	{
		$this->renderPartial('login');
	}

	protected function renderJSON($data)
	{
	    header('Content-type: application/json');
	    echo CJSON::encode($data);

	    foreach (Yii::app()->log->routes as $route) {
	        if($route instanceof CWebLogRoute) {
	            $route->enabled = false; // disable any weblogroutes
	        }
	    }
	    Yii::app()->end();
	}
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->renderJSON("success");
	}
	


	public function actionOitm()
	{
		//$currentPage=$_GET['page'];
		$this->renderPartial('oitm');
	}
	public function actionOitmJson()
	{
		$TenSP ="";
		$TenSP = $_GET["TenSP"];
		$MaNganh="";
		$MaNganh = $_GET["MaNganh"];
		$MaLoai="";
		$MaLoai = $_GET["MaLoai"];
		$MaNhan="";
		$MaNhan = $_GET["MaNhan"];

		$criteria = new CDbCriteria();
		if ($_GET["TenSP"]!="") {
			$criteria->addCondition('TenSP LIKE :TenSP ');
			$criteria->params[':TenSP']='%'.$TenSP.'%';
		}
		if ($_GET["MaNganh"]!="0") {
			$criteria->addCondition("MaNganh = :MaNganh");
			$criteria->params[':MaNganh']= $MaNganh;
		}
		if ($_GET["MaLoai"]!="0") {
			$criteria->addCondition("MaLoai = :MaLoai");
			$criteria->params[':MaLoai']= $MaLoai;
		}
		if ($_GET["MaNhan"]!="0") {
			$criteria->addCondition("MaNhan = :MaNhan");
			$criteria->params[':MaNhan']= $MaNhan;
		}
		$criteria->order = 'NgayTao DESC';
		$findO = Oitm::Model()->findAll($criteria);

		$this->renderJSON($findO);
	}

	public function actionOing()
	{
		$this->renderPartial('oing');
	}
	public function actionOingJson()
	{
		$findO = Oing::Model()->findAll();

		$this->renderJSON($findO);
	}

	public function actionOitb()
	{
		$this->renderPartial('oitb');
	}
	public function actionOitbJson()
	{
		$findO = Oitb::Model()->findAll();

		$this->renderJSON($findO);
	}

	public function actionOrmc()
	{
		$this->renderPartial('ormc');
	}
	public function actionOrmcJson()
	{
		$findO = Ormc::Model()->findAll();

		$this->renderJSON($findO);
	}


	public function actionSlide()
	{
		$this->renderPartial('slide');
	}

	public function actionLinkHinh()
	{
		$this->renderPartial('linkhinh');
	}

	public function actionSlideJson()
	{
		$findO = Slider::Model()->findAll();

		$this->renderJSON($findO);
	}

	public function actionLinkHinhJson()
	{
		$findO = Linkhinh::Model()->findAll();

		$this->renderJSON($findO);
	}

	public function actionInsertOITM(){
		$this->renderPartial('insertOitm');
	}

	public function actionNganhJson(){
		$record=Oing::Model()->findAll();
		$this->renderJSON($record);
	}
	public function actionLoaiJson(){
		$record=Oitb::Model()->findAll();
		$this->renderJSON($record);
	}
	public function actionNhanJson(){
		$record=Ormc::Model()->findAll();
		$this->renderJSON($record);
	}

	public function actionProductDetailJson(){
		$data = $_GET['MaSP'];
		$criteria = new CDbCriteria;
		$records= Oitm::model()->find('MaSP=:MaSP', array(':MaSP'=>$data));
		$this->renderJSON($records);


	}


	public function actionInsertOitmJson()
	{

		$postdata = file_get_contents("php://input");
	    $request = json_decode($postdata);
	 	//$this->renderJSON($request);
	    
		$Oitm=Yii::app()->db->createCommand()->insert('oitm', 
				array('MaSP'=>$request->MaSP
					,'TenSP'=>$request->TenSP
					,'MaNganh'=>$request->ddlNganh
					,'MaLoai'=>$request->ddlLoai
					,'MaNhan'=>$request->ddlNhan
					,'TenNganh'=>$request->ddlNganh
					,'TenLoai'=>$request->ddlLoai
					,'TenNhan'=>$request->ddlNhan
					,'MaNguoiTao'=>Yii::app()->user->name
					,'TenNguoiTao'=>Yii::app()->user->name
					,'NgayTao'=>date("Y-m-d H:i:s")
					,'SuDung'=>$request->SuDung
					,'TinhTrang'=>$request->TinhTrang
					,'TenVietTat'=>$request->TenVietTat
					,'MoTa'=>$request->MoTa
					,'Mau'=>''
					,'QLTonKho'=>$request->ddlQLTonKho
					,'QLSerial'=>$request->ddlQLSerial
					,'MaNCC'=>$request->ddlNhan
					,'TenNCC'=>$request->ddlNhan
					,'Link'=>$request->Link
					,'HinhAnh'=>$request->Link
					,'ChieuDai'=>$request->ChieuDai
					,'CanNang'=>$request->CanNang
					,'DoSau'=>$request->DoSau
					,'Lure'=>$request->Lure
					,'Line'=>$request->Line
					,'PE'=>$request->PE
					,'Ring'=>$request->Ring
					,'Hook'=>$request->Hook
					,'SoKhoen'=>$request->SoKhoen
					,'Khoen'=>$request->Khoen
					,'Blank'=>$request->Blank
					,'Bu'=>$request->Bu
					,'Pat'=>$request->Pat
					,'Tua'=>$request->Tua
					,'Thang'=>$request->Thang
					,'BacDan'=>$request->BacDan
					,'CongNghe'=>$request->CongNghe
					,'Size'=>$request->Size
					,'LoaiDay'=>$request->LoaiDay
					,'Gia'=>$request->Gia
					,'BaiViet'=>$request->BaiViet
				));
		$this->renderJSON($Oitm);
		
	}

	public function actionUpdateOitmJson()
	{

		$postdata = file_get_contents("php://input");
	    $request = json_decode($postdata);
	 	//$this->renderJSON($request);

	    
		$Oitm=Yii::app()->db->createCommand()->update('oitm', 
				array(
					'TenSP'=>$request->TenSP
					,'MaNganh'=>$request->ddlNganh
					,'MaLoai'=>$request->ddlLoai
					,'MaNhan'=>$request->ddlNhan
					,'TenNganh'=>$request->ddlNganh
					,'TenLoai'=>$request->ddlLoai
					,'TenNhan'=>$request->ddlNhan
					,'MaNguoiTao'=>Yii::app()->user->name
					,'TenNguoiTao'=>Yii::app()->user->name
					,'NgayTao'=>date("Y-m-d H:i:s")
					,'SuDung'=>$request->SuDung
					,'TinhTrang'=>$request->TinhTrang
					,'TenVietTat'=>$request->TenVietTat
					,'MoTa'=>$request->MoTa
					,'Mau'=>''
					,'QLTonKho'=>$request->ddlQLTonKho
					,'QLSerial'=>$request->ddlQLSerial
					,'MaNCC'=>$request->ddlNhan
					,'TenNCC'=>$request->ddlNhan
					,'Link'=>$request->Link
					,'HinhAnh'=>$request->Link
					,'ChieuDai'=>$request->ChieuDai
					,'CanNang'=>$request->CanNang
					,'DoSau'=>$request->DoSau
					,'Lure'=>$request->Lure
					,'Line'=>$request->Line
					,'PE'=>$request->PE
					,'Ring'=>$request->Ring
					,'Hook'=>$request->Hook
					,'SoKhoen'=>$request->SoKhoen
					,'Khoen'=>$request->Khoen
					,'Blank'=>$request->Blank
					,'Bu'=>$request->Bu
					,'Pat'=>$request->Pat
					,'Tua'=>$request->Tua
					,'Thang'=>$request->Thang
					,'BacDan'=>$request->BacDan
					,'CongNghe'=>$request->CongNghe
					,'Size'=>$request->Size
					,'LoaiDay'=>$request->LoaiDay
					,'Gia'=>$request->Gia
					,'BaiViet'=>$request->BaiViet
				), 'MaSP=:MaSP', array(':MaSP'=>$request->MaSP));
		$this->renderJSON($Oitm);
		
	}


	function actionDeleteOitmJson(){
		$MaSP=$_GET['MaSP'];
		//$DeleteA=Oitm::model()->find('MaSP=:MaSP',array(':MaSP'=>$MaSP) ); 
		//$DeleteA->delete();
		$model=Oitm::model()->deleteAll(array("condition"=>"MaSP='$MaSP'"));
		$this->renderJSON($model);
		//$this->renderJSON($MaSP);
	}

	public function actionCheckMaSPOitmJson()
	{
		$MaSP ="";
		$MaSP = $_GET["MaSP"];

		$criteria = new CDbCriteria();
		
		if ($_GET["MaSP"]!="") {
			$criteria->addCondition("MaSP = :MaSP");
			$criteria->params[':MaSP']= $MaSP;
			$findO = Oitm::Model()->findAll($criteria);
			if (count($findO)>0) {
				$this->renderJSON(1);
			}else{
				$this->renderJSON(0);
			}
			
		}
		else
		{
			$this->renderJSON(0);
		}
		

		
	}



	public function actionInsertOingJson()
	{
		$MaNganh="";
		$TenNganh="";

		$MaNganh=$_GET['MaNganh'];
		$TenNganh=$_GET['TenNganh'];

		
	 	//$this->renderJSON($request);
	    
		$oing=Yii::app()->db->createCommand()->insert('oing', 
				array('MaNganh'=>$MaNganh
					,'TenNganh'=>$TenNganh
				));
		$this->renderJSON($oing);
		
	}

	public function actionUpdateOingJson()
	{

		$MaNganh="";
		$TenNganh="";

		$MaNganh=$_GET['MaNganh'];
		$TenNganh=$_GET['TenNganh'];

		//echo $TenNganh;
	    
		$oing=Yii::app()->db->createCommand()->update('oing', 
				array(
					'TenNganh'=>$TenNganh
				), 'MaNganh=:MaNganh', array(':MaNganh'=>$MaNganh));
		$this->renderJSON($oing);
		
	}

	function actionDeleteOingJson(){
		$MaNganh=$_GET['MaNganh'];
		//$DeleteA=Oitm::model()->find('MaSP=:MaSP',array(':MaSP'=>$MaSP) ); 
		//$DeleteA->delete();
		$model=Oing::model()->deleteAll(array("condition"=>"MaNganh='$MaNganh'"));
		$this->renderJSON($model);
		//$this->renderJSON($MaSP);
	}


	public function actionInsertOitbJson()
	{
		$MaLoai="";
		$TenLoai="";
		$MaNganh="";

		$MaLoai=$_GET['MaLoai'];
		$TenLoai=$_GET['TenLoai'];
		$MaNganh=$_GET['MaNganh'];

		
	 	//$this->renderJSON($request);
	    
		$oitb=Yii::app()->db->createCommand()->insert('oitb', 
				array('MaLoai'=>$MaLoai
					,'TenLoai'=>$TenLoai
					,'MaNganh'=>$MaNganh
				));
		$this->renderJSON($oitb);
		
	}


	public function actionUpdateOitbJson()
	{

		$MaLoai="";
		$TenLoai="";
		$MaNganh="";

		$MaLoai=$_GET['MaLoai'];
		$TenLoai=$_GET['TenLoai'];
		$MaNganh=$_GET['MaNganh'];

		//echo $TenNganh;
	    
		$oitb=Yii::app()->db->createCommand()->update('oitb', 
				array(
					'TenLoai'=>$TenLoai
					,'MaNganh'=>$MaNganh
				), 'MaLoai=:MaLoai', array(':MaLoai'=>$MaLoai));
		$this->renderJSON($oitb);
		
	}


	function actionDeleteOitbJson(){
		$MaLoai=$_GET['MaLoai'];
		//$DeleteA=Oitm::model()->find('MaSP=:MaSP',array(':MaSP'=>$MaSP) ); 
		//$DeleteA->delete();
		$model=oitb::model()->deleteAll(array("condition"=>"MaLoai='$MaLoai'"));
		$this->renderJSON($model);
		//$this->renderJSON($MaSP);
	}



	public function actionInsertOrmcJson()
	{
		$MaNhan="";
		$TenNhan="";

		$MaNhan=$_GET['MaNhan'];
		$TenNhan=$_GET['TenNhan'];

		
	 	//$this->renderJSON($request);
	    
		$ormc=Yii::app()->db->createCommand()->insert('ormc', 
				array('MaNhan'=>$MaNhan
					,'TenNhan'=>$TenNhan
				));
		$this->renderJSON($ormc);
		
	}

	public function actionUpdateOrmcJson()
	{

		$MaNhan="";
		$TenNhan="";

		$MaNhan=$_GET['MaNhan'];
		$TenNhan=$_GET['TenNhan'];

		//echo $TenNganh;
	    
		$ormc=Yii::app()->db->createCommand()->update('ormc', 
				array(
					'TenNhan'=>$TenNhan
				), 'MaNhan=:MaNhan', array(':MaNhan'=>$MaNhan));
		$this->renderJSON($ormc);
		
	}

	function actionDeleteOrmcJson(){
		$MaNhan=$_GET['MaNhan'];
		//$DeleteA=Oitm::model()->find('MaSP=:MaSP',array(':MaSP'=>$MaSP) ); 
		//$DeleteA->delete();
		$model=Ormc::model()->deleteAll(array("condition"=>"MaNhan='$MaNhan'"));
		$this->renderJSON($model);
		//$this->renderJSON($MaSP);
	}

	//slider


	public function actionInsertSliderJson()
	{
		$Caption="";
		$Link="";
		$Active="";

		$Caption=$_GET['Caption'];
		$Link=$_GET['Link'];
		$Active=$_GET['Active'];

		
	 	//$this->renderJSON($request);
	    
		$slider=Yii::app()->db->createCommand()->insert('slider', 
				array('Caption'=>$Caption
					,'Link'=>$Link
					,'Active'=>$Active
				));
		$this->renderJSON($slider);
		
	}

	public function actionUpdateSliderJson()
	{
		$ID="";
		$Caption="";
		$Link="";
		$Active="";

		$ID=$_GET['ID'];
		$Caption=$_GET['Caption'];
		$Link=$_GET['Link'];
		$Active=$_GET['Active'];
		//echo $TenNganh;
	    
		$slider=Yii::app()->db->createCommand()->update('slider', 
				array(
					'Caption'=>$Caption
					,'Link'=>$Link
					,'Active'=>$Active
				), 'ID=:ID', array(':ID'=>$ID));
		$this->renderJSON($slider);
		
	}

	function actionDeleteSliderJson(){
		$ID=$_GET['ID'];
		//$DeleteA=Oitm::model()->find('MaSP=:MaSP',array(':MaSP'=>$MaSP) ); 
		//$DeleteA->delete();
		$model=Slider::model()->deleteAll(array("condition"=>"ID='$ID'"));
		$this->renderJSON($model);
		//$this->renderJSON($MaSP);
	}


	// link hinh
	public function actionInsertLinkHinhJson()
	{
		$Caption="";
		$Link="";
		$MaSP="";

		$Caption=$_GET['Caption'];
		$Link=$_GET['Link'];
		$MaSP=$_GET['MaSP'];

		
	 	//$this->renderJSON($request);
	    
		$linkhinh=Yii::app()->db->createCommand()->insert('linkhinh', 
				array('Caption'=>$Caption
					,'Link'=>$Link
					,'MaSP'=>$MaSP
				));

		$last_id = Yii::app()->db->getLastInsertID();
		$this->renderJSON($last_id);
		
	}

	public function actionUpdateLinkHinhJson()
	{
		$ID="";
		$Caption="";
		$Link="";
		$Active="";

		$ID=$_GET['ID'];
		$Caption=$_GET['Caption'];
		$Link=$_GET['Link'];
		$MaSP=$_GET['MaSP'];
		//echo $TenNganh;
	    
		$linkhinh=Yii::app()->db->createCommand()->update('linkhinh', 
				array(
					'Caption'=>$Caption
					,'Link'=>$Link
					,'MaSP'=>$MaSP
				), 'ID=:ID', array(':ID'=>$ID));
		$this->renderJSON($linkhinh);
		
	}

	function actionDeleteLinkHinhJson(){
		$ID=$_GET['ID'];
		//$DeleteA=Oitm::model()->find('MaSP=:MaSP',array(':MaSP'=>$MaSP) ); 
		//$DeleteA->delete();
		$model=Linkhinh::model()->deleteAll(array("condition"=>"ID='$ID'"));
		$this->renderJSON($model);
		//$this->renderJSON($MaSP);
	}
}