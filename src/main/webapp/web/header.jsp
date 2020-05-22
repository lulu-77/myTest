<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="top" class="fixed_nav">
    <div id="logo" class="lf" style="margin-top:-10px;" >
    	<a href="${pageContext.request.contextPath}/news/showNewsItem.do">
        	<img class="animated jello" src="../images/logo.png"  width=150px  height=100px/>
        </a>   
    </div>    
    <div id="top_input" class="lf">
    	<form action="${pageContext.request.contextPath}/news/showNewsByTitle.do" method="post">
	        <input 
	        id="input" name="title" 
	        type="text" 
	        placeholder="请输入您要搜索的内容" 
	        style="width:350px;height:30px;margin-top:-5px"
	        value="${title}"/>&nbsp;&nbsp;
	        <a class="rt" onclick="document.forms[0].submit();"> <!-- search1(); -->
	        	<img id="search" src="${pageContext.request.contextPath}/images/search.png" width=50px  height=25px alt="搜索"/>
	        </a>
        </form>
    </div>
    <div class="rt" style="margin-top:19px;margin-right:-50px; font-size:15px">
        <ul class="lf">
            <li><a></a></li>
        	<c:if test="${user==null}">
            	<li><a class="login" href="${pageContext.request.contextPath}/user/showLogin.do">登录</a><b>|</b></li>
        		</c:if>
        		<c:if test="${user!=null}">
            	<li><a class="login" href="${pageContext.request.contextPath}/user/logout.do">退出</a><b>|</b></li>
        	</c:if>
            <li><a href="#">侵权投诉</a><b>|</b></li>
            <li><a href="${pageContext.request.contextPath}/news/showNewsItem.do" >相关产品</a><b>|</b></li>  
            <li><a href="${pageContext.request.contextPath}/web/help.jsp">帮助</a> </li>    
        </ul>
    </div> 
</header>  
<script>
	function search1(){
		location="${pageContext.request.contextPath}/news/showNewsByTitle.do?title="+$("#input").val();
	}
</script>
<!--
	//ע�⿪��tomcat�����ļ�conf/server.xml��������·����֧�� 
	//��65��
    <Connector connectionTimeout="20000" port="8080" protocol="HTTP/1.1" redirectPort="8443"
			 URIEncoding="UTF-8"/>
	
	//��ǰ��Ŀ����ʱ���Ѿ���Ϊpost��ʽ�ύ��������������в�ѯ��2ҳʱ��������Ҫ��������֧�֡�
 -->










