<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>统计</title>
		<link rel="stylesheet" type="text/css" href="/Public/admin/css/html5.css"/>
		<link rel="stylesheet" type="text/css"  href="/Public/admin/font/iconfont.css">
		<link rel="stylesheet" type="text/css"  href="/Public/admin/font/css/font-awesome.css">
		<link rel="stylesheet" type="text/css" href="/Public/admin/css/index.css"/>
		<script src="/Public/admin/js/jquery-1.10.2.min.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<style type="text/css">
			.right_min{background: #f2f2f2;}
			.query{background:#fff;}
		</style>
		<div class="right_min">
			<div class="crumbs_nav">
				<i class="iconfont icon-shouye"></i>
				<ul>
					<li><a href="<?php echo U('index/welcome');?>">首页</a></li>
					<li> > </li>
					<li><a href="javascript:void(0);">主页</a></li>
				</ul>
			</div>
			
			<div class="min">
			<!--查询-->
				<div class="query">
					<h1 style="font-size:25px;">欢迎【<font color=red><?php echo ($_SESSION['admin']['realname']); ?>(<?php echo ($_SESSION['admin']['username']); ?>)</font>】进入<?php echo (C("System.admin_title")); ?>！</h1>
				</div>
				<div class="tongji_box">
					<ul>
						<li class="tongji pg_lr15">
							<a href="javascript:void(0);">
								<div class="title">
									<i class="fa fa-users" style="color:#54FF9F;font-size: 16px;"></i>
									<h4><span>工作人员数</span></h4>
								</div>
								<div class="center">
									<p> 
									<?php if($admininfo == 0): ?><span>0</span>
										<em>人</em>
									<?php else: ?>
										<span><?php echo ($admininfo); ?></span>
										<em>人</em><?php endif; ?>
									</p>
								</div>
							</a>
						</li>
					
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>
<script type="text/javascript">
	$(function(){
		$(".right_min").height($(window).height());
	});
</script>