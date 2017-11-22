<?php
namespace app\user\controller;
use think\Hook;
class Index
{
    public function index()
    {
         //判断用户是否登录
         Hook::listen('CheckAuth',$params);
        echo "index_end";
    }
}
