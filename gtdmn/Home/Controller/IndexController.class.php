<?php
namespace Home\Controller;
use Think\Controller;
use Think\Page;
class IndexController extends Controller
{
    public function index()
    {


      //图片列表
        $lartab = M('larpic');
        $lar = $lartab->field('pic_src,ac_id')->order('pic_id desc')->select();

        //公告列表
        $afftab = M('affice');
        $aff = $afftab->field('ac_id,ac_titile,ac_date')->limit(7)->order('ac_id desc')->select();

        //门票类型
        $etk_type = M('etk_type');
        $etk=$etk_type->field('etk_type_id,etk_type_name,etk_type_pro,etk_type_price')->select();



        $this->assign('etk',$etk);
        $this->assign('aff',$aff);
        $this->assign('lar',$lar);
        $this->display();
    }

    public function affice_ls(){

      import('ORG.Util.Page');
      $afftab = M('affice');
      $count = $afftab->count();
      $Page = new Page($count,11);
      $Page->setConfig('theme',"<ul class='pagination pagination-md' style='display:block;'>
      <li>%FIRST%</li>
      <li>%UP_PAGE%</li>
      <li>%LINK_PAGE%</li>
      <li>%DOWN_PAGE%</li>
      <li>%END%</li>
      <li><a> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页</a></li>
      </ul>");
      $show = $Page->show();
      $aff = $afftab->field('ac_id,ac_titile,ac_date')->limit($Page->firstRow.','.$Page->listRows)->order('ac_id desc')->select();
      $this->assign('page',$show);
      $this->assign('aff',$aff);
      $this->display();
    }

    public function affice_con(){
      $acid['ac_id'] = I('ac_id',1,true);

      $affice = D('AfficeView');
      $acid['ac_id']<1?$acid['ac_id']=1:null;
      // $acid['ac_id']>$affice->count()?$acid['ac_id']=1:null;

      $affice_con = $affice->where($acid)->select();
      //标题 时间 作者 内容
      $this->assign('affcon',$affice_con);
      $this->display();
    }

    public function view_pic(){
      //"图片风光";
      $this->display();
    }

    public function intro(){
      //景区简介
      $this->display();
    }

    public function cont_info(){
      //联系我们
      $this->display();
    }

    public function nav_gui(){
      //语音导游

      $posdb = M("position");
      $pos = $posdb->select();

      $this->assign('pos',$pos);
      $this->display();
    }

    public function nav_plan(){
      //出行方案
      $this->display();
    }

    public function header(){
      if(Session('usrid')!=null){
      $uid['usr_id'] = Session('usrid');
      $button = \Common\Controller\AuthController::authcheck('mgr_auth',$uid['usr_id'],'or',U('Admin/Index/index'),U('UserHome/usr_home'));
      $user = M("User");
      $uimg = $user->field('usr_pic')->where($uid)->select();
      $this->assign('uimg',$uimg);
      $this->assign('button',$button);
      }
      $this->display();
    }
    public function footer(){
      $this->display();
    }

}
