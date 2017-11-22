<?php
namespace app\user\controller;
use app\index\model\User;
use think\View;
class Members{
     public  function  index(){
          $list =User::all(function($query){
              $query->where('status',0)->limit(5)->order('user_id','asc');
          });
         $view =new View;
         //设置变量输出
         $view->assign('list',$list);
         return $view->fetch('index');
     }
}