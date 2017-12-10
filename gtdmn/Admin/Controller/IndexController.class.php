<?php
namespace Admin\Controller;

use Common\Controller\AuthController;
use Think\Page;
use Think\Upload;
class IndexController extends AuthController
{
    public function index()
    {
      $info = array(
            '操作系统'=>PHP_OS,
            '运行环境'=>$_SERVER["SERVER_SOFTWARE"],
            '主机名'=>$_SERVER['SERVER_NAME'],
            'WEB服务端口'=>$_SERVER['SERVER_PORT'],
            '网站文档目录'=>$_SERVER["DOCUMENT_ROOT"],
            '浏览器信息'=>substr($_SERVER['HTTP_USER_AGENT'], 0, 40),
            'ThinkPHP版本'=>THINK_VERSION,
            'GD库版本'=>gd_info()['GD Version'],
            '服务器时间'=>date("Y-m-d H:i:s",time()),
            '上传附件限制'=>ini_get('upload_max_filesize'),
            '执行时间限制'=>ini_get('max_execution_time').'秒',
            '服务器域名/IP'=>$_SERVER['SERVER_NAME'].' [ '.gethostbyname($_SERVER['SERVER_NAME']).' ]',
            '用户的IP地址'=>$_SERVER['REMOTE_ADDR'],
            '剩余空间'=>round((disk_free_space(".")/(1024*1024)),2).'M',
        );
        $this->assign('info',$info);
        $this->display();
    }

    public function affice_ls(){
      import('ORG.Util.Page');
      $affice = D('Home/AfficeView');
      $count = $affice->count();
      $Page = new Page($count,11);
      $Page->setConfig('theme',"<ul class='pagination pagination-md'>
      <li>%FIRST%</li>
      <li>%UP_PAGE%</li>
      <li>%LINK_PAGE%</li>
      <li>%DOWN_PAGE%</li>
      <li>%END%</li>
      <li><a> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页</a></li>
      </ul>");
      $show = $Page->show();
      $aff = $affice->limit($Page->firstRow.','.$Page->listRows)->order('ac_id desc')->select();
      //print_r($aff);
      $this->assign('page',$show);
      $this->assign('aff',$aff);
      $this->display();
    }

    public function affice_add(){
      $this->display();
    }

    public function pic_ls(){
      $lartab = M('larpic');
      $pic_ls = $lartab->field('pic_id,pic_src')->order('pic_id desc')->select();

      $this->assign('pic_ls',$pic_ls);
      $this->display();
    }

    public function pic_add(){
      if(IS_POST){
        $data['pic_rank'] = 0;
        $data['ac_id'] = 0;
    		$upload  = new Upload();
    		$upload->maxSize = 3145728;
    		$upload->exts = array('jpg','gif','png','jpeg');
    		$upload->rootPath = $_SERVER['DOCUMENT_ROOT'].'/gtdmn'."/Uploads/images/";
    		$upload->autoSub = false;
    		$info = $upload->upload();
    		if(!$info){
    			$this->error($upload->getError());
    		}else{

    			foreach ($info as $file){
    				$data['pic_src'] = '/Uploads/images/'.$file['savename'];
    			}

    			$listtable = M('larpic');
    			$id = $listtable->add($data);

    			$this->success("信息添加成功！");
    		}
    	}
    }

    public function uer_ls(){
      import('ORG.Util.Page');
      $uerdb = M('User');
      $count = $uerdb->count();
      $Page = new Page($count,3);
      $Page->setConfig('theme',"<ul class='pagination pagination-md'>
      <li>%FIRST%</li>
      <li>%UP_PAGE%</li>
      <li>%LINK_PAGE%</li>
      <li>%DOWN_PAGE%</li>
      <li>%END%</li>
      <li><a> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页</a></li>
      </ul>");
      $show = $Page->show();
      $uer = $uerdb->limit($Page->firstRow.','.$Page->listRows)->select();
      //print_r($aff);
      $this->assign('page',$show);
      $this->assign('uer',$uer);
      $this->display();
    }

    public function order_ls(){
      $etk = D('Etk');
      $hotel = D('Hotel');

      $etkp = $etk->relation(true)->select();
      $hotp = $hotel->relation(true)->select();
      //print_r($hotp);
      $this->assign('etkp',$etkp);
      $this->assign('hotp',$hotp);
      $this->display();
    }

    public function position(){

      $posdb = M('position');
      $pos = $posdb->field('pos_id,pos_name')->select();

      $this->assign('pos',$pos);
      $this->display();
    }

    public function log(){
      import('ORG.Util.Page');
      $uid['usr_id'] = Session("usrid");
      $logdb = M("log");
      $count = $logdb->where($uid)->count();
      $Page = new Page($count,11);
      $Page->setConfig('theme',"<ul class='pagination pagination-md'>
      <li>%FIRST%</li>
      <li>%UP_PAGE%</li>
      <li>%LINK_PAGE%</li>
      <li>%DOWN_PAGE%</li>
      <li>%END%</li>
      <li><a> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页</a></li>
      </ul>");
      $show = $Page->show();

      $log = $logdb->where($uid)->order('log_id desc')->limit($Page->firstRow.','.$Page->listRows)->select();

      $this->assign('page',$show);
      $this->assign('log',$log);
      $this->display();
    }

    public function answer(){
      import('ORG.Util.Page');
      $answdb = D("AnswView");
      $uid['rec_id'] = Session("usrid");
      $count = $answdb->where($uid)->count();
      $Page = new Page($count,5);
      $Page->setConfig('theme',"<ul class='pagination pagination-md'>
      <li>%FIRST%</li>
      <li>%UP_PAGE%</li>
      <li>%LINK_PAGE%</li>
      <li>%DOWN_PAGE%</li>
      <li>%END%</li>
      <li><a> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页</a></li>
      </ul>");
      $show = $Page->show();
      $answ = $answdb->where($uid)->limit($Page->firstRow.','.$Page->listRows)->select();
      //print_r($answ);
      $this->assign('page',$show);
      $this->assign('answ',$answ);
      $this->display();
    }
}
