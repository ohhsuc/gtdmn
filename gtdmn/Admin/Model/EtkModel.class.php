<?php
namespace Admin\Model;
use Think\Model\RelationModel;

class EtkModel extends RelationModel{
  protected $_link = array(
      'User'=>array(
          'mapping_type'=>self::BELONGS_TO,	//设置关联模式
          'class_name'=>'user',			//关联的模型类名，如果不写，会自动定位相关数据表
          'foreign_key'=>'usr_id',			//User数据表对应当前表 id的字段
        //  'mapping_name'=>'user',				//关联映射名称，用于获取数据的数组名。 当使用as_fields时不显示
          'as_fields'=>'usr_name',
        //  'mapping_order'=>'log_date desc',
          'mapping_fields'=>'usr_name', 		// 关联要查询的字段，默认是查询所有
      ),

      'Etk_type'=>array(
          'mapping_type'=>self::BELONGS_TO,	//设置关联模式
          'class_name'=>'Etk_type',			//关联的模型类名，如果不写，会自动定位相关数据表
          'foreign_key'=>'etk_type',			//User数据表对应当前表的哪个字段
        //  'mapping_name'=>'user',				//关联映射名称，用于获取数据的数组名。 当使用as_fields时不显示
          'as_fields'=>'etk_type_name',
        //  'mapping_order'=>'log_date desc',
          'mapping_fields'=>'etk_type_name', 		// 关联要查询的字段，默认是查询所有
      ),

    );
}
