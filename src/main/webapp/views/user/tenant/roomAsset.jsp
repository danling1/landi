<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/ld/user/tenant/roomGuest.js"></script>
	<link href="${pageContext.request.contextPath}/css/ld/user/tenant/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	 <link href="${pageContext.request.contextPath }/css/ld/user/tenant/roomGuest.css" rel="stylesheet" type="text/css" />
	<title>房间信息</title>
</head>
<body>
<jsp:include page="../_header.jsp"></jsp:include>
	
    <!-- 二级导航栏 start -->
    <div class="main-nav"> 
        <div class="aside-box">
            <ul>
                <li class="linormal"><span class="glyphicon glyphicon-home"></span><a href="javascript:void(0);">&nbsp;&nbsp;首页</a></li>
                <li class="liactive"><span class="glyphicon glyphicon-user"></span><a href="${pageContext.request.contextPath}/views/user/tenant/generalMap.jsp">&nbsp;&nbsp;租客管理</a></li>
                <li class="linormal"><span class="glyphicon glyphicon-usd"></span><a href="${pageContext.request.contextPath}/views/user/roomAsset.jsp">&nbsp;&nbsp;固定资产</a></li>
                <li class="linormal"><span class="glyphicon glyphicon-list-alt"></span><a href="">&nbsp;&nbsp;采购</a></li>
                <li class="linormal"><span class="glyphicon glyphicon-shopping-cart"></span><a href="">&nbsp;&nbsp;小卖部</a></li>
                <li class="linormal"><span class="glyphicon glyphicon-heart-empty"></span><a href="">&nbsp;&nbsp;爱心驿站</a></li>
                <li class="linormal"><span class="glyphicon glyphicon-indent-left"></span><a href="">&nbsp;&nbsp;统计信息</a></li>
                <li class="linormal"><span class="glyphicon glyphicon-plus"></span><a href="">&nbsp;&nbsp;其他</a></li>
            </ul>
        </div>
    </div>
    <!-- 二级导航栏 end-->
	<div class="body-content">
		<div class="mod-wrap">
			<div class="panel-tab">
				<ul class="clear">
					<li id="tenant-header"><a href="${pageContext.request.contextPath}/views/user/tenant/roomGuest.jsp">租客信息</a></li>
					<li id="asset-header" class="active-tab"><a href="${pageContext.request.contextPath}/views/user/tenant/roomAsset.jsp">物品信息</a></li>
					<li id="check-header"><a href="${pageContext.request.contextPath}/views/user/tenant/checkRoom.jsp">查房状态</a></li>
					<li id="maintain-header"><a href="${pageContext.request.contextPath}/views/user/tenant/roomMaintain.jsp">维修状态</a></li>
					<li id="others-header"><a href="#others">其他</a></li>
				</ul>
			</div>
		</div>
		<div class="tab-wrap">
			<div class="tab-content" id="asset">
				<div class="tab-header">
					<div><h2>物品信息</h2></div>
				</div>
				<div class="active-content" style="display:none;"></div>
				<div id="room-item">
					<div class="inner-table">
						<h3>家具信息</h3>
						<table id="item_furniture" class="table table-striped">
							<thead><tr><th>编号</th><th>名称</th><th>品牌</th><th>类别</th><th>标签</th><th>备注</th><tr></thead>
							<tbody>
							</tbody>
						</table>
					</div>
					<div class="inner-table">
						<h3>家电信息</h3>
						<table class="table table-striped">
							<thead><tr><th>编号</th><th>名称</th><th>品牌</th><th>类别</th><th>标签</th><th>备注</th><tr></thead>
							<tbody>
								<tr><th>1</th><th></th><th></th><th></th><th></th><th></th><tr>
								<tr><th>2</th><th></th><th></th><th></th><th></th><th></th><tr>
							</tbody>
						</table>
					</div>
					<div class="inner-table">
						<h3>灯具信息</h3>
						<table class="table table-striped">
							<thead><tr><th>编号</th><th>名称</th><th>品牌</th><th>类别</th><th>标签</th><th>备注</th><tr></thead>
							<tbody>
								<tr><th>1</th><th></th><th></th><th></th><th></th><th></th><tr>
								<tr><th>2</th><th></th><th></th><th></th><th></th><th></th><tr>
							</tbody>
						</table>
					</div>
					<div class="inner-table">
						<h3>窗帘及浴屏</h3>
						<table class="table table-striped">
							<thead><tr><th>编号</th><th>名称</th><th>品牌</th><th>类别</th><th>标签</th><th>备注</th><tr></thead>
							<tbody>
								<tr><th>1</th><th></th><th></th><th></th><th></th><th></th><tr>
								<tr><th>2</th><th></th><th></th><th></th><th></th><th></th><tr>
							</tbody>
						</table>
					</div>
					<div class="inner-table">
						<h3>备品信息</h3>
						<table class="table table-striped">
							<thead><tr><th>编号</th><th>名称</th><th>品牌</th><th>类别</th><th>标签</th><th>备注</th><tr></thead>
							<tbody>
								<tr><th>1</th><th></th><th></th><th></th><th></th><th></th><tr>
								<tr><th>2</th><th></th><th></th><th></th><th></th><th></th><tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<script>
		$(function(){
			let params = window.location.search;
			if (params.indexOf('rid')>=0) {
				let roomId = params.replace('?','').split('&')[0].split('=')[1];
				getFurniture(parseInt(roomId));
				getElectric(parseInt(roomId));
				getLight(parseInt(roomId));
				getCurtain(parseInt(roomId));
				getLittle(parseInt(roomId));
			}
			
			
		});
	</script>
</body>
</html>