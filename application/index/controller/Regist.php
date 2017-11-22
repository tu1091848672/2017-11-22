<?php
namespace app\index\controller;
use think\View;
use think\Controller;
use app\index\model\User;


class Regist extends  Controller
{
    public function  index()
    {
        return $this->fetch();
    }

    public function regist()
    {
        $user = new User;
        $user->user_name = input('post.user_name');
        $user->user_sex = input('post.UserSex');
        $user->user_tel = input('post.UserTel');
        $user->user_email = input('post.UserEmail');
        $user->user_address = input('post.UserAddress');
        $user->user_birth = input('post.UserJoinTime');
        $user->user_passwd =md5(input('post.UserPasswd')) ;
        $user->user_signature = input('post.UserSignature');
        $user->user_hobby = input('post.UserHobby');
        //进行规则验证
        //进行规则验证
        $result = $this->validate(
            [
                'name' => $user->user_name,
                'email' => $user->user_email,
                'tel' => $user->user_tel,
                'address' => $user->user_address,
                'birth' => $user->user_birth,
                'password' => $user->user_passwd,
            ],
            [
                'name' => 'require|max:10', //最大长度
                'email' => 'email',      //email格式
                'sex' => 'number|between:0,1',  //
                'tel' => 'require',
                'address' => 'require',
                'birth' => 'require',
                'password' => 'require',
            ]);
        if (true !== $result) {
            $this->error($result);
        }
        //写入数据库
        if ($user->save()) {
            return $this->success('注册成功','Login/index');
        } else {
           return $this->success('注册失败');
        }
    }
}
