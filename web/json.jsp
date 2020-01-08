<%--
  Created by IntelliJ IDEA.
  User: 30374
  Date: 2020/1/8
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSON</title>
</head>
<body>
<div id="person"></div>
<ul id="countUL"></ul>
<select name="" id="sele"></select>
<script src="js/jquery.js"></script>
<script>
    $(document).ready(function () {
        var user={
            "id":1,
            "name":"嘟嘟",
            "password":"123456"
        }
        $("#person").append(user.id+"<br/>").append(user.name+"<br/>").append(user.password+"<br/>");
        //json数组
        var counties=["中国","美国","澳大利亚"];
        $counties=$(counties);
        //获取ul节点
        $ul=$("#countUL");
        //将数据+li标签遍历填充到ul中
        $counties.each(function () {
            $ul.append("<li>"+this+"</li>");
        })
       var $sele=$("#sele");
        $counties.each(function (i) {
            $sele.append("<option value='"+(i+1)+"'>"+this+"</option>")
        })
    })


</script>
</body>
</html>
