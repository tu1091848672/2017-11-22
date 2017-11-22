<?php
namespace app\blog\controller;
/**
 *
 */
use think\View;
use app\blog\model\Blog;

class Index{

    public function index(){
        $list = Blog::all();

        $view = new View;

        //设置变量输出
        $view->assign('list',$list);
        return $view->fetch('index');
    }

    public function details($id){
        echo $id;
    }
}
