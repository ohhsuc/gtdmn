<?php
namespace Home\Model;
use Think\Model\ViewModel;

class AnswViewModel extends ViewModel{
	public $viewFields = array(
			'Answ'=>array('ans_id','ans_msg','ans_date','rec_id','send_id'),
			'User'=>array('usr_id','usr_name','_on'=>'Answ.send_id=User.usr_id')
	);
}
