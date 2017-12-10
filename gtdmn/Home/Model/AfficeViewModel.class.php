<?php
namespace Home\Model;
use Think\Model\ViewModel;

class AfficeViewModel extends ViewModel{
	public $viewFields = array(
			'Affice'=>array('usr_id','ac_id','ac_titile','ac_context','ac_date'),
			'User'=>array('usr_id','usr_name','_on'=>'Affice.usr_id=User.usr_id')
	);
}
