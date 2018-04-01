<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用AJAX以JSON方式提交数据</title>
<script type="text/javascript" src="Scripts/jquery-1.10.2.min.js"></script>
</head>
<body onload="test()">
	<form>
		名称：<input type="text" id="name"/><br/>
		血量：<input type="text" id="hp"/><br/>
		<input type="button" value="提交" id="sender"/>
	</form>
	<div id="messageDiv"></div>
	<script>
		
		function test() {
			alert("dd");
		}
	
		$('#sender').click(function() {
			
			var name = document.getElementById('name').value;
			var hp = document.getElementById('hp').value;
			var hero = {"name":name,"hp":hp};
			var url = "SubmitServlet";
			
			$.post(
				url,
				{"data":JSON.stringify(hero)},
				function(data) {
					alert("提交成功，请在Tomcat控制台查看服务端接收到的数据");
				});
		});
	</script>
</body>
</html>