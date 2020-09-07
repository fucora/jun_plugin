<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/static/taglibs.jsp"%>
<html>
<head>
<title>Hadoop图形报表  - Hadoop集群列表</title>
</head>
<body>
<ul class="breadcrumb">
  <li><a href="${base}/index">首页</a> <span class="divider">/</span></li>
  <li><a href="${base}/hadoop/report/list">图形报表</a><span class="divider">/</span></li>
  <li class="active"> Hadoop集群列表</li>
</ul>
<table class="table table-bordered table-striped table-hover">
			<thead>
				<tr><th>序号</th><th>主机名</th><th>IP地址</th><th>HDFS地址</th><th>Hadoop安装路径</th><th>请选择</th></tr>
			</thead>
			<tbody>
				<c:forEach var="config" items="${configs}" varStatus="index">
					<tr>
						<td>${index.index+1}</td>
						<td>${config.hostname}</td>
						<td>${config.ip}</td>
						<td>${config.hdfsFullPath}</td>
						<td>${config.hadoopSetupPath}</td>
						<td><a class="btn btn-primary dropdown-toggle" href="${base}/hadoop/report/index">进入</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>