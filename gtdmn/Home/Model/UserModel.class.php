<?php
namespace Home\Model;
use Think\Model\RelationModel;

class UserModel extends RelationModel{

  //自动完成 （使用add()方法时不能写任何参数）
  protected $_auto = array(
      //array(完成字段1,完成规则,[完成条件,附加规则]),
      array('usr_pic','Uploads/usr_img/null.jpg'),
  //密码加密		array('usr_pass','sha1',3,'function'),
      );


  //一次性获得全部验证错误
	protected $patchValidate = true;

	//通过重写父类属性_validate实现表单验证
	protected $_validate = array(
			//验证字段1，验证规则，错误提示，[验证条件，附加规则，验证时间]，
			//验证用户名，require必须填写项目
			array('usr_name','require','用户名必须填写'),
			array('usr_name','','用户名已存在',0,'unique',1),
			array('usr_pass','require','密码必须填写'),
			//array('usr_name','8','学号长度不正确',1,'length'),
			//可以为同一个项目设置多个验证
			array('usr_pass2','require','确认密码必须填写'),
			array('usr_pass2','usr_pass','与密码的信息必须一致',0,'confirm'),

	);

  public function checkuserLogin($user,$pass){
    //登录验证
    $info = $this->getByusr_name($user);

    if($info != null){
      if($info['usr_pass'] != $pass){
        return false;
      }else{
        return $info;
      }
    }else{
      return false;
    }
  }

  public function checkuserPwd($userId,$pass){
    //原密码验证
      $info = $this->getByusr_id($userId);

      if($info !=null){
      if($info['usr_pass'] != $pass){
        return false;
      }else{
        return true;
      }
  }else{
    return false;
  }
}



  protected $_link = array(
      'log'=>array(
          'mapping_type'=>self::HAS_MANY,	//设置关联模式
          'class_name'=>'log',			//关联的模型类名，如果不写，会自动定位相关数据表
          'foreign_key'=>'usr_id',			//User数据表对应当前表 id的字段
          'mapping_name'=>'log',				//关联映射名称，用于获取数据的数组名。 当使用as_fields时不显示
          'mapping_order'=>'log_date desc',
        //  'mapping_fields'=>'group_id', 		// 关联要查询的字段，默认是查询所有
      ),

      'etk'=>array(
          'mapping_type'=>self::HAS_MANY,	//设置关联模式
          'class_name'=>'etk',			//关联的模型类名，如果不写，会自动定位相关数据表
          'foreign_key'=>'usr_id',			//User数据表对应当前表 id的字段
          'mapping_name'=>'etk',				//关联映射名称，用于获取数据的数组名。 当使用as_fields时不显示
        //  'mapping_fields'=>'group_id', 		// 关联要查询的字段，默认是查询所有
      ),

      'hotel'=>array(
          'mapping_type'=>self::HAS_MANY,	//设置关联模式
          'class_name'=>'hotel',			//关联的模型类名，如果不写，会自动定位相关数据表
          'foreign_key'=>'usr_id',			//User数据表对应当前表 id的字段
          'mapping_name'=>'hotel',				//关联映射名称，用于获取数据的数组名。 当使用as_fields时不显示
        //  'mapping_fields'=>'group_id', 		// 关联要查询的字段，默认是查询所有
      ),

    );

}
