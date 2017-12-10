<?php
namespace Admin\Controller;
use Think\Controller;
class ExecController extends Controller{

  public function getaff($id){
    //根据id获取公告
    $aff_id['ac_id'] = $id;
    $affice = M('Affice');
    $aff = $affice->field('ac_id,ac_titile,ac_context')->where($aff_id)->select();
    echo json_encode($aff);
  }

  public function updateaff(){
    //修改公告
    if(IS_POST){
      $aff['ac_id'] = $_POST['xgid'];
      $aff['ac_titile'] = $_POST['xgbt'];
      $aff['ac_context'] = $_POST['xgnr'];
      //print_r($aff);
      $affice = M('Affice');
      $z = $affice->save($aff);
      if(!$z){
        $this->error("修改失败");
      }else{
        $this->success("修改成功");
      }
    }
  }


  public function deleteaff($id){
    //删除公告
    $aff['ac_id'] = $id;
    $affice = M('Affice');
    $z = $affice->where($aff)->delete();
    if(!$z){
      $this->ajaxReturn("删除失败");
    }else{
      $this->ajaxReturn("删除成功");
    }
  }

  public function addaff(){
    //添加公告
    if(IS_POST){
      $aff['ac_titile'] = $_POST['title'];
      $aff['ac_context'] = $_POST['info'];
      $aff['ac_date'] = date("Y-m-d H:i:s",time());
      $aff['usr_id'] = Session("usrid");
      //print_r($aff);
      $affice = M('Affice');
      $z = $affice->add($aff);
      if(!$z){
        $this->error("添加失败");
      }else{
        $this->success("添加成功");
      }
    }
  }

  public function deletepic($id){
    //删除图片
    $pic['pic_id'] = $id;
    $larpic = M('larpic');
    $result = $larpic->where($pic)->select();

		if(file_exists($_SERVER['DOCUMENT_ROOT'].'/gtdmn'.$result[0]['pic_src'])){
      $px = unlink($_SERVER['DOCUMENT_ROOT'].'/gtdmn'.$result[0]['pic_src']);
		}else{
      $px = true;
    }

    $z = $larpic->where($pic)->delete();
    if(!$z && !$px){
      $this->ajaxReturn("删除失败");
    }else{
      $this->ajaxReturn("删除成功");
    }
  }

  public function getuser($id){
    //根据id获取用户
    $usr_id['usr_id'] = $id;
    $userdb = M('User');
    $user = $userdb->field('usr_id,usr_name,usr_phone,usr_gender,usr_detail')->where($usr_id)->select();
    $this->ajaxReturn($user);
  }

  public function updateuser(){
    //修改用户
    if(IS_POST){
      $usr['usr_id'] = $_POST['uid'];
      $usr['usr_name'] = $_POST['uname'];
      $usr['usr_phone'] = $_POST['uphone'];
      $usr['usr_gender'] = $_POST['ugender'];
      $usr['usr_detail'] = $_POST['udetail'];
      $userdb = M('User');
      $z = $userdb->save($usr);
      if(!$z){
        $this->error("修改失败");
      }else{
        $this->success("修改成功");
      }
    }
  }

  public function deleteuser($id){
    //删除用户
    $usr['usr_id'] = $id;
    $userdb = M('User');
    $access = M('auth_group_access');
    $x = $access->where('uid='.$id)->delete();
    $z = $userdb->where($usr)->delete();
    if(!$z && !$x){
      $this->ajaxReturn("删除失败");
    }else{
      $this->ajaxReturn("删除成功");
    }
  }
  public function deletk($id){
    //删除门票
    $etk['etk_id'] = $id;
    $etkdb = M('Etk');
    $z = $etkdb->where($etk)->delete();
    if(!$z){
      $this->ajaxReturn("删除失败");
    }else{
      $this->ajaxReturn("删除成功");
    }
  }

  public function delhot($id){
    //删除酒店
    $hot['hot_id'] = $id;
    $hotdb = M('Hotel');
    $z = $hotdb->where($hot)->delete();
    if(!$z){
      $this->ajaxReturn("删除失败");
    }else{
      $this->ajaxReturn("删除成功");
    }
  }

  public function getpos($id){
    //根据id得到景区位置记录
    $pos['pos_id'] = $id;
    $posdb = M('position');
    $res = $posdb->where($pos)->select();
    $this->ajaxReturn($res);
  }

  public function updatepos(){
    //修改景区位置
    if(IS_POST){
      $posdb = M('position');
      $pos_id['pos_id'] = $_POST['posit'];
      $pos_id['pos_pt'.$_POST['pos_pt']] = $_POST['pos'];
      $z = $posdb->save($pos_id);
      if(!$z){
        $this->ajaxReturn("修改失败");
      }else{
        $this->ajaxReturn("修改成功");
      }
    }
  }

  public function answ_add(){
    //咨询回复
    if(IS_AJAX){
      $data['send_id'] = Session("usrid");
      $data['rec_id'] = $_POST['rec_id'];
      $data['ans_msg'] = $_POST['nr'];
      $data['ans_date'] = date("Y-m-d H:i:s",time());

      $answdb = M('answ');
      $z = $answdb->add($data);
      if(!$z){
        $this->ajaxReturn("回复失败");
      }else{
        $this->ajaxReturn("回复成功");
      }
    }
  }

}
