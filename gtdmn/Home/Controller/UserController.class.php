<?php
namespace Home\Controller;

// use Common\Controller\AuthController;
use Think\Controller;

class UserController extends Controller{

  public function usr_home(){
      $this->display();
  }

  public function userLogin(){
      //用户登录
  if (IS_POST) {
		$verify = new \Think\Verify ();
		if (! $verify->check ( $_POST ['verImg'] )) {
			$this->error ( '验证码错误' );
		} else {
      $user = new \Home\Model\UserModel ();
      $rst = $user->checkuserLogin ( $_POST ['user'], $_POST ['pass'] );

      if ($rst === false) {
      //  $log['log_res'] = '密码错误';
        $this->error("用户名或密码错误",U('Index/index'));
      } else {
        session ( 'usrname', $rst ['usr_name'] );
        session ( 'usrid', $rst ['usr_id'] );

        $loginlog = M('Log');             //登录日志
        $log['usr_id'] = Session('usrid');
        $browser = $this->get_client_browser();     //获得浏览器类型
        $log['log_type'] = $browser[0].$browser[1];
        $log['log_date'] = date('Y-m-d H:i:s');;
        $log['log_ip'] = get_client_ip();;

        $loginlog -> add($log);
        // $this->redirect('Index/index',array('id'=>100,'name'=>'tom',2,'即将登陆成功'));
        $this->success ( "即将登陆成功",U('Index/index'));
        }
      }
    }
  }


  public function userRegister() {
    // 接收用户注册信息
  if (IS_POST) {
    $verify = new \Think\Verify ();
    if (! $verify->check ( $_POST ['verImg'] )) {
      $this->error ( '验证码错误' );
    } else {
    $userdb = new \Home\Model\UserModel ();

    $user ['usr_name'] = htmlspecialchars($_POST ['reguser']);
    $user ['usr_pass'] = $_POST ['regpass'];
    $user ['usr_pass2'] = $_POST ['regpass2'];


      $z = $userdb->create ($user,1);
      If (! $z) {
        $gter = $userdb->getError (); // 返回验证错误的信息
        $this->error ( $gter ['usr_name'] . ' ' . $gter ['usr_pass'] . ' ' . $gter ['usr_pass2'], U ( 'Index/index' ) );
      } else {
        $useracc ['uid'] = $userdb->add ();
        $useracc ['group_id'] = 1;
        $access = M('auth_group_access');
        $access ->add($useracc);
        $this->success ( "注册成功", U ( 'Index/index' ) );
      }
    }
  }
  }


  public function userLogout(){
    //用户注销登陆
    session(null);
    $this->success("注销成功",U('Index/index'));
  }

  public function userAlter(){
    //个人信息修改
    if(IS_POST){
      $userdb = new \Home\Model\UserModel ();
      $user_id ['usr_id'] = Session('usrid');
      $user ['usr_name'] = htmlspecialchars($_POST ['uname']);
      $user ['usr_phone'] = htmlspecialchars($_POST ['uphone']);
      $user ['usr_gender'] = htmlspecialchars($_POST ['ugender']);
      $user ['usr_detail'] = htmlspecialchars($_POST ['udetail']);

      $z = $userdb->create($user,2);
      If (! $z) {
        $gter = $userdb->getError (); // 返回验证错误的信息
        $this->error ( $gter ['usr_name'] . ' ' . $gter ['usr_pass'] , U ( 'Index/index' ) );
      } else {
        $userdb->where($user_id)->save($user) ? $this->success("修改成功") : $this->error("修改失败");
      }
    }
  }

  public function userAlterpass(){
    //修改个人密码
    if(IS_POST){
      $userdb = new \Home\Model\UserModel ();
      $user_id['usr_id'] = Session('usrid');
      $oldpass = $_POST['oldpass'];
      $user['usr_pass'] = $_POST['newpass'];
      $user['usr_pass2'] = $_POST['newpass2'];
      $z = $userdb->checkuserPwd($user_id['usr_id'],$oldpass);
      if(! $z){
        $this->error("原密码输入错误");
      }else{
      $f = $userdb->create($user,2);
        if($f)
          $userdb->where($user_id)->save($user) ? $this->success("修改密码成功") : $this->error("修改密码失败");
        else{
          $gter = $userdb->getError (); // 返回验证错误的信息
          $this->error ($gter ['usr_pass2']);
        }
      }
    }
  }



  public function verifyImg() {
    $config = array (
        'length' => 4,
        'imageH' => 30,
        'imageW' => 96,
        'fontSize' => 14,
        'useNoise' => true,
        'useCurve' => false,
    			// 'fontttf' => 'jtz.ttf',
    			// 'useZh' =>true,
    			// 'zhSet' => '高婷大美妞我爱你',
    );
    $verify = new \Think\Verify ( $config );
    $verify->entry (); // 输出验证码并把验证码的值保存在session中
  }


  function get_client_browser($glue = null) {
  $browser = array();
  $agent = $_SERVER['HTTP_USER_AGENT']; //获取客户端信息

  /* 定义浏览器特性正则表达式 */
  $regex = array(
      'ie'      => '/(MSIE) (\d+\.\d)/',
      'chrome'  => '/(Chrome)\/(\d+\.\d+)/',
      'firefox' => '/(Firefox)\/(\d+\.\d+)/',
      'opera'   => '/(Opera)\/(\d+\.\d+)/',
      'safari'  => '/Version\/(\d+\.\d+\.\d) (Safari)/',
  );
  foreach($regex as $type => $reg) {
      preg_match($reg, $agent, $data);
      if(!empty($data) && is_array($data)){
          $browser = $type === 'safari' ? array($data[2], $data[1]) : array($data[1], $data[2]);
          break;
      }
  }
  return empty($browser) ? false : (is_null($glue) ? $browser : implode($glue, $browser));
}

}
