<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="common.Const" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>天天新闻</title>
    <link href="../css/orders.css" rel="stylesheet"/>
    <link href="../css/header.css" rel="stylesheet"/>
    <link href="../css/footer.css" rel="stylesheet"/>
</head>
<body onload = "myfun()">
<!-- 页面顶部-->
<div>
<jsp:include page="header.jsp"></jsp:include></div>
<!-- nav主导航-->

    <!--新闻标题栏内容区域 #container-->
    <div id="container" class="clearfix">
	    <!-- 左边栏-->
	<jsp:include page="left.jsp"></jsp:include>
        <!-- 中间栏-->
	<div class="centersidebar_box" id="centersidebar_box">
	    <div class="wrap">
	    <c:set var="nid" value="0" />
	    <!-- 订单列表项 -->
	    <c:forEach items="${listNews}" var="newsItem">
        	<c:if test="${nid!=newsItem.id}">
                <c:set var="oid" value="${newsItem.id}" />
	  				<div class="content"> 
        	    		<ul>
						<li>
			   			 <div class="left"><a href="showNewsInfo.do?id=${newsItem.id }"><img src="${newsItem.picture }" alt=""></a></div>
			    		<div class="right">
						<div class="right_top">
				    	<h3><a href="showNewsInfo.do?id=${newsItem.id }">${newsItem.title }</a><!-- title表新闻标题 --></h3>
						</div>
						<div class="right_bottom">
				    	<div class="right_bottom_left">
						<span>${newsItem.author}</a></span>·<!-- writer表作者名 --></span>
						<span>发布时间：${newsItem.date}</span><!-- newsTime表发布时间 --></span> 
						<span>|</span> 
				    	</div>
						</div>
			    		</div>
						</li>    
  		    			</ul>
  					</div>
  	        </c:if>
  	    </c:forEach>
            </div>
        </div>
<!-- 右边栏-->

        <jsp:include page="right.jsp"></jsp:include>
</div>

        <!--<iframe src="order_status.html" width="1000" height=500""></iframe>-->
 

</body>
<script>
    function myfun() {
    	if(location.href == "http://localhost:8080/NewsSystem/web/index.jsp")
        	location.href="${pageContext.request.contextPath}/news/showNewsItem.do";
    };
    myfun();
</script>

<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script src="../js/index.js"></script>
<script src="../js/jquery.page.js"></script>
<script type="text/javascript" src="../js/orders.js"></script>
</html>