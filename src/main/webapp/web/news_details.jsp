<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="common.Const"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>新闻详情页</title>
<link rel="stylesheet" href="../css/header.css" />
<link href="../css/pro_details.css" rel="Stylesheet" />
<link href="../css/animate.css" rel="Stylesheet" />
<link rel="stylesheet" href="../css/footer.css" />
</head>
<body>
	<!-- 页面顶部-->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 内容-->
	<!-- 左侧-->
	<div id="main">
		<div id="left">
			<div class="pinlun">
				<img src="../images/pinlun.png" alt="pinlun"> <span>120</span>
			</div>
			<div class="weibo">
				<img src="../images/weibo.png" alt="weibo"> <span>微博</span>
			</div>
			<div class="weibo">
				<img src="../images/qq.png" alt="qq"> <span>Qzone</span>
			</div>
			<div class="weibo">
				<img src="../images/weixin.png" alt="weixin"> <span>微信</span>
			</div>
		</div>
		<!-- 新闻内容 -->
		<div id="right">
			<div id="right-a">
				<!-- 订单列表项 -->
				<p class="right-a-title">${News.title}</p>
				<div class="right-a-author">
					<span>${News.author}</span> <span>发布时间：${News.date}</span>
				</div>
				<!-- 显示文章 -->
				<div class="right-a-content">
					<pre>${News.content}</pre>
				</div>
				<!-- 正文结束 -->
				<!-- 标签&&收藏 -->
				<div class="right-a-keyword">
					<!-- 标签 -->
					<!-- 收藏 -->
					<div class="right-a-keyword-b">
						<a href=""><img src="../images/shoucang.png" alt="shoucang"></a><span>收藏</span>
						<a href=""><img src="../images/jubao.png" alt="jubao"></a><span>举报</span>
					</div>
				</div>
			</div>
			<!-- 右侧作者栏 -->
			<div id="right-b">
				<div id="right-b-1">
					<div class="right-b-1-a">
						<img src="/images/5.jpg" alt="5">
						<div class="author">
							<span class="author-a"><a href="">${News.author}</a></span><br>
							<a href="" class="author-b">&nbsp;&nbsp;+关注</a>
						</div>
					</div>
					<div class="right-b-1-b">
						<a href="">.${News.title }</a>
					</div>
				</div>
			</div>
		</div>

	</div>





</body>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script src="../js/index.js"></script>
<script src="../js/jquery.page.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
</html>