<?php
namespace app\index\controller;
use think\View;
use think\Controller;
use app\index\model\User;

class Login extends  Controller
{
    public  function  index(){
      return  $this->fetch();
    }
    public  function  login($user_name='',$user_passwd='',$verify=''){
        $captcha = new \think\captcha\Captcha();
        if(!$captcha->check($verify)){

            $this ->error('验证码错误！');
        }else{
            $user =user::get([
                'user_name'=>$user_name,
                'user_passwd'=>md5($user_passwd)
            ]);
            if($user){
                echo "登录成功";
            }else{
                return $this->error('登录失败');
            }
        }


    }
}