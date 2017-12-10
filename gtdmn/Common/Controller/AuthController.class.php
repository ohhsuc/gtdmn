<?php
/*
    刘容雨
    2017/6
*/
namespace Common\Controller;
use Think\Controller;
use Think\Auth;
class AuthController extends Controller {
	protected function _initialize() {
		$ruleName = MODULE_NAME.'/'.CONTROLLER_NAME.'/'.ACTION_NAME; //需要验证的规则名
//		echo $ruleName;
		$userId = Session('usrid');							 //用户的id
		$auth = new Auth();
		if(!$auth->check($ruleName, $userId))
		{
			$this->error('请先登录或注册');
		}
	}
	public static function authcheck($rule,$uid,$relation = 'or',$t,$f = '没有权限'){
		$auth = new Auth();
		return $auth->check($rule, $uid, $relation)? $t : $f;
	}
}
