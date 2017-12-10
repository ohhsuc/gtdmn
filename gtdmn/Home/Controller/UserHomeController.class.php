<?php
namespace Home\Controller;
use Common\Controller\AuthController;
use Think\Upload;

class UserHomeController extends AuthController{

  public function usr_home(){

    $usrtab = D('User');
    $usrId['usr_id'] = Session('usrid');
    //关联模型 个人信息+订单信息
    $usrinfo = $usrtab->relation(true)->field('usr_id,usr_name,usr_phone,usr_gender,usr_pic,usr_detail')->where($usrId)->select();


    $infodd = array_merge($usrinfo[0]['etk'],$usrinfo[0]['hotel']); //合并数组
    $infodate = array_column($infodd,'dd_time');                    //提取出一个一位数组
    array_multisort($infodate,SORT_DESC,$infodd);                   //根据一位数组对多维数组进行排序
    array_splice($usrinfo[0],-2);                                   //剔除数组后两个键值对

    //print_r($infodd);

    //门票类型
    $etk_type = M('Etk_type');
    $etk=$etk_type->field('etk_type_id,etk_type_name,etk_type_pro,etk_type_price')->select();

    //酒店类型
    $hotel_type = M('Hotel_type');
    $hotel=$hotel_type->field('hot_type_id,hot_type_name,hot_type_pro,hot_type_price')->select();
    //var_dump($usrinfo);

    //问题咨询显示
    $answ = D("AnswView");
    $answhere['rec_id|send_id'] =Session('usrid');
    $ans_ls = $answ->where($answhere)->order('ans_date')->select();



    //print_r($hotel);
    $this->assign('ans_ls',$ans_ls);
    $this->assign('hotel',$hotel);
    $this->assign('etk',$etk);
    $this->assign('usrinfo',$usrinfo);
    $this->assign('infodd',$infodd);
    $this->display();
  }

  public function userEtk(){
    //门票预定提交
    if(IS_POST){
      $etk = M("Etk");
      $etkdd['usr_id'] = Session('usrid');
      $etkdd['etk_type'] = $_POST['etktype'];
      $etkdd['etk_num'] = $_POST['etknum'];
      $etkdd['etk_num']>10?$etkdd['etk_num']=10:null;
      $etkdd['dd_time'] = date('Y-m-d H:i:s');

      $z = $etk->add($etkdd);
      if(! $z){
        $this->error("订单提交失败");
      }else{
        $this->success("订单提交成功");
      }
    }
  }

  public function userHot(){
    //酒店预定提交
    if(IS_POST){
      //hot_type 	rdate 	ldate 	hot_time 	hot_status 	usr_id
      $Hot = M("Hotel");
      $Hotdd['usr_id'] = Session('usrid');
      $Hotdd['hot_type'] = $_POST['hot_type'];
      $Hotdd['rdate'] = $_POST['rdate'];
      $Hotdd['ldate'] = $_POST['ldate'];
      $Hotdd['dd_time'] = date('Y-m-d H:i:s');
      if($Hotdd['rdate']=="" || $Hotdd['ldate']=="") $this->error("请选择日期");
      $z = $Hot->add($Hotdd);
      if(! $z){
        $this->error("订单提交失败");
      }else{
        $this->success("订单提交成功");
      }
    }
  }

  public function answ(){
    //问题咨询提交
    if(IS_POST){
      $answ = M("Answ");
      $ans['ans_msg'] = htmlspecialchars($_POST['msg']);
      $ans['ans_date'] = date('Y-m-d H:i:s');
      $ans['rec_id'] = 2;  //管理员id
      $ans['send_id'] = Session('usrid');

      $z = $answ->add($ans);
      if(! $z){
        $this->error("问题提交失败");
      }else{
        $this->success("问题提交成功");
      }

    }
  }

  public function picupload(){
    //头像上传
    if(IS_POST){
      $upload = new Upload();
      $upload->maxSize = 3145728;
      $upload->exts = array('jpg','gif','png','jpeg');
      $upload->rootPath = './Uploads/usr_img/';  //根目录
      $upload->autoSub = false; //不设置子目录
      $upload->saveName = Session('usrname'); //设置文件名
      $upload->replace = true; //设置同名覆盖
      $info = $upload->upload();
      //执行上传方法
      if (!$info) {
      $this->error($upload->getError());
      } else {
        $usrdb = M("User");
        $where['usr_id'] = Session('usrid');
        $usr['usr_pic'] = 'Uploads/usr_img/'.$info['usr_pic']['savename'];
        $z = $usrdb->where($where)->save($usr);
        if(z)
          {
            $this->success('上传成功!');
          }else{
            $this->error('保存失败!');
          }
      }
    }
  }

  public function zf(){
    $this->error("没有支付的功能");
  }

}
