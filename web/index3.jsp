<%--
  Created by IntelliJ IDEA.
  User: 30374
  Date: 2020/1/8
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

用户名: <input type="text" name="name" id="name"><br/>
<div id="test"></div>
<input type="button" name="submit" value="提交" onclick="ajax()">


<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script>
    function ajax() {
        var name = document.getElementById("name").value;
        $.ajax({
            "url": "Index3Servlet",
            "type": "get",//数据传输类型
            "data": "name=" + name,///查询字符串的值
            "dataType": "text",//响应结果的类型
            "success": callback1,
            "error": function () {
                alert("未知错误");
            }
            // "complete":function () {//完成以后的动作
            //     $("#test").css("color","red");
            // }
            // "beforeSend":function () {//开始以前的动作
            //     if (confirm("确定操作吗?","")){
            //         alert("继续");
            //     } else{
            //         alert("等等")
            //     }
            // }
        })
    }

    function callback1(result) {
        var d = document.getElementById("test");
    if (result=="true"){

        d.innerText="失败";
    }
    }
</script>
<script>
    <%--function ajax() {--%>
    <%--//1.创建XMLHttpRequest--%>
    <%--if (window.XMLHttpRequest) {//如果返回结果为true那么说明使用的时新版本你的ie浏览器--%>
    <%--xmlHttpRequest = new XMLHttpRequest();--%>
    <%--} else {//如果返回的时false说明使用的时旧版本的ie浏览器--%>
    <%--xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");--%>
    <%--}--%>
    <%--//2.设置回调函数--%>
    <%--xmlHttpRequest.onreadystatechange = callback;--%>
    <%--//3.初始化xmlHttpRequest--%>
    <%--//局部刷新的格式:sevlet的名字--%>
    <%--var uname = document.getElementById("name").value;--%>
    <%--url = "Index3Servlet?name=" + uname;--%>
    <%--xmlHttpRequest.open("get", url, true);--%>
    <%--//4.发送请求--%>
    <%--xmlHttpRequest.send(null);--%>
    <%--}--%>

    function callback() {
        if (xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200) {
            var data = xmlHttpRequest.responseText;
            var d = document.getElementById("test");
            if (data == "true") {
                d.innerText = "成功";
            } else {
                d.innerText = "失败";
            }
        }
    }
</script>
</body>
</html>
