<?php

class SiteController extends Controller
{
	/**
	 * Declares class-based actions.
	 */
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
		$this->renderPartial('indexPart');
	}

	public function actionProductDetail(){
		//echo '0';
		$this->renderPartial('detail');
	}
		public function actionTempLightBox(){
		//echo '0';
		$this->renderPartial('lightbox');
	}


	public function actionProductSearchView(){
		//echo '0';
		$this->renderPartial('search');
	}
	


	public function actionProductDetailJson(){
		$data = $_GET['id'];
		$criteria = new CDbCriteria;
		$criteria->limit = 1;
		$criteria->params=array('MaSP' => $data,);
		$records = Oitm::model()->find($criteria);
		$this->renderJSON($records);
	}

	public function actionProdcutSearch(){
		$TenSP ="";
		$TenSP = $_GET["TenSP"];
		$MaNganh="";
		$MaNganh = $_GET["MaNganh"];
		$criteria = new CDbCriteria();
		if ($_GET["TenSP"]!="ALL") {
			$criteria->addCondition('TenSP LIKE :TenSP ');
			$criteria->params[':TenSP']='%'.$TenSP.'%';
		}
		if ($_GET["MaNganh"]!="ALL") {
			$criteria->addCondition("MaNganh = :MaNganh");
			$criteria->params[':MaNganh']= $MaNganh;
		}
		$product = Oitm::model()->findAll( $criteria );     // finds nothing
		//echo $TenSP .  $MaNganh;
		//echo $MaNganh;
		//echo $TenSP .  $MaNganh;
		$this->renderJSON($product);
	}
	public function actionProdcutItGroup(){
		
		$criteria = new CDbCriteria();
		
		$criteria->addCondition("MaLoai = :MaLoai ");
		$criteria->params[':MaLoai']=$_GET["MaLoai"].'';
		
		$product = Oitm::model()->findAll( $criteria );     // finds nothing
		//echo $TenSP .  $MaNganh;
		//echo $MaNganh;
		//echo $TenSP .  $MaNganh;
		//echo $_GET["MaLoai"];
		$this->renderJSON($product);
	}

	public function actionNganhJson()
	{
		$records = Oing::model()->findAll();
		//$records=Yii::app()->db->createCommand("CALL your_stored_procedure()")
        //              ->queryAll();
		$this->renderJSON($records);
	}

	public function actionIndexJson()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$records = Menu::model()->findAll();
		$this->renderJSON($records);
	}


	public function actionListLinkImgProductJson()
	{
		//echo $_GET["MaSP"];
		$Link = Yii::app()->db->createCommand()
		    ->select("Link as url,caption as caption,Link as thumbUrl")
		    ->from('linkhinh')
		    ->where("MaSP='".$_GET["MaSP"]."'")
		    ->limit(3)
		    ->queryAll();
		 $this->renderJSON($Link);

	}

	public function actionListNameProductJson()
	{
		//echo $_GET["MaSP"];
		$TenSP = $_GET["TenSP"];
			$Link = Yii::app()->db->createCommand()
		    ->select("TenSP as TenSP")
		    ->from('oitm')
		    ->where("TenSP like '%".$TenSP."%'")
		    ->limit(10)
		    ->queryAll();
		$this->renderJSON($Link);
	}


	public function actionProductJson()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$data = $_GET['data'];
		$criteria = new CDbCriteria;
		$criteria->limit = $data;
		$records = Oitm::model()->findAll($criteria);
		$this->renderJSON($records);
	}

	public function actionGetSilder(){
		$criteria = new CDbCriteria;
		$criteria->limit = 5;
		$records = Slider::model()->findAll($criteria);
		$this->renderJSON($records);
	}
	public function actionMenuJson()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$result="";
		$result_menu = Oing::model()->findAll();
		
		for ($i=0;$i<count($result_menu);$i++){
				//echo $result_menu[$i]['MaNganh'];

				if ($result != "") {$result .= ",";}
				$result .= '{"MaNganh":"'   .$result_menu[$i]['MaNganh']. '",';
				$result .= '"TenNganh":"'   .$result_menu[$i]['TenNganh']. '",';
				
				$criteria = new CDbCriteria();
				$criteria->condition = 'MaNganh=:MaNganh';
				$criteria->params = array(':MaNganh'=>$result_menu[$i]['MaNganh']);

				if (Oitb::model()->exists($criteria)) {
				    $post=Oitb::model()->findAll(array(
				    'select'=>'MaLoai,TenLoai',
				    'condition'=>'MaNganh='.$result_menu[$i]['MaNganh'].'',
					));
					$sub="";
					for ($j=0;$j<count($post);$j++){
						if ($sub != "") {$sub .= ",";}
					    $sub .= '{"MaLoai":"'  . $post[$j]['MaLoai'] . '",';
					    $sub .= '"TenLoai":"'   . $post[$j]['TenLoai']        . '"}';
					}
					$result .= '"records":['   .$sub. ']}';	
				} else {
				   
					$result .= '"records":[' ."".']}';	
				}
		}
		echo '['.$result.']';

		
		//$this->renderJSON($result);
				
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
	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * Displays the contact page
	 */
	public function actionContact()
	{
		$model=new ContactForm;
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			if($model->validate())
			{
				$name='=?UTF-8?B?'.base64_encode($model->name).'?=';
				$subject='=?UTF-8?B?'.base64_encode($model->subject).'?=';
				$headers="From: $name <{$model->email}>\r\n".
					"Reply-To: {$model->email}\r\n".
					"MIME-Version: 1.0\r\n".
					"Content-Type: text/plain; charset=UTF-8";

				mail(Yii::app()->params['adminEmail'],$subject,$model->body,$headers);
				Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
				$this->refresh();
			}
		}
		$this->render('contact',array('model'=>$model));
	}

	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
		$model=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}
		// display the login form
		$this->render('login',array('model'=>$model));
	}

	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}
}