<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajax</title>
</head>
<body>
<input type="text" id="mobile">
<br/>
<input type="button" value="注册" onclick="registerGet()">

<script>
    <%--post方式实现异步刷新--%>
    function register() {
        var mobile = document.getElementById("mobile").value;
        //通过ajax异步方式操作
        xmlHttpRequest = new XMLHttpRequest();
        //设置XMLHttpRequest对象的回调函数
        xmlHttpRequest.onreadystatechange = callBaxk;
        //建立连接 设置为post方式
        xmlHttpRequest.open("post", "AjaxServlet", true);
        //设置post方式的头信息
        xmlHttpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
        xmlHttpRequest.send("mobile=" + mobile);
    }

    <!--get方式实现异步刷新-->
    function registerGet() {
        var mobile = document.getElementById("mobile").value;
        //通过ajax异步方式操作
        xmlHttpRequest = new XMLHttpRequest();
        //设置XMLHttpRequest对象的回调函数
        xmlHttpRequest.onreadystatechange = callBaxk;
        //建立连接 设置为post方式
        xmlHttpRequest.open("get", "AjaxServlet?mobile="+mobile, true);
        //设置post方式的头信息
        xmlHttpRequest.send(null);
    }


    //定义回调函数(接受服务端的返回值)
    function callBaxk() {
        if (xmlHttpRequest.readyState==4 && xmlHttpRequest.status==200) {
            //接受服务端返回的数据
            var data=xmlHttpRequest.responseText;//服务端返回值为String格式
            if (data=="true"){
                alert("此号码以存在，请更换!")
            } else{
                alert("注册成功!");
            }
        }else{

        }
    }
</script>
</body>
</html>