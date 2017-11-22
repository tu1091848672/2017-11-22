<?php
namespace app\user\behavior;
use think\Controller;
class UserCheck{
    use \traits\controller\Jump;//类里面引入jump;类
    //绑定到CheckAuth标签，可以用于检测Session以用来判断用户是否登录
    public function run(&$params){

        return $this->error('请登录！','index/login');
    }
}