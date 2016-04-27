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
	            'actions'=>array('Index','Logout','GetMenu','Oitm','OitmJson','Oing','Oitb','Ormc','Slide','OingJson','OitbJson','OrmcJson','SlideJson'),
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

	public function actionGetMenu()
	{
		$menu = Menu::model()->findAll();  
		$this->renderJSON($menu);
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
		$this->renderPartial('oitm');
	}
	public function actionOitmJson()
	{
		$findO = Oitm::Model()->findAll();

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
	public function actionSlideJson()
	{
		$findO = Slider::Model()->findAll();

		$this->renderJSON($findO);
	}
}