<%--
  Created by IntelliJ IDEA.
  User: 30374
  Date: 2020/1/6
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ajax实现异步刷新</title>
</head>
<body>
手机号:<input type="text" id="mobile">
<br/>
<input type="button" value="注册" onclick="register()">
<span id="sp"></span> <!--配合$("#sp").load()//实现异步刷新-->
<script src="js/jquery.js"></script>
<script>
    function register() {
        var $mobile = $("#mobile").val();
        <!--get和post可以共用的方法实现异步刷新-->
        // $.ajax({
        //     url:"AjaxServlet",
        //     请求方式:"post",
        //     data:"mobile="+$mobile,
        //     success:qingqiu,
        //     error:function () {
        //         alert("系统异常!")
        //     }
        // })
        <!--post方式实现异步刷新-->
        //     $.post(
        //         "AjaxServlet",
        //     "mobile=" + $mobile,
        //     qingqiu,
        //     "text"
        // )
        //get方式实现异步刷新
        // $.get(
        //         "AjaxServlet",
        //     "mobile=" + $mobile,
        //     qingqiu,
        //     "text"
        // )
        <!--使用load方法实现异步刷新-->
        <!--将服务端的返回值直接返回到$("#sp")所选择的元素中-->
        // $("#sp").load(
        //     "AjaxServlet",
        //     "mobile=" + $mobile
        // )
    //     var json={"name":"zs","age":23};
    //     alert(json.name+"-----"+json.age)
    //     //json数组
    //     var student=[
    //         {"name":"zs","age":23},
    //         {"name":"ls","age":24},
    //         {"name":"ww","age":25}
    //     ];
    //     alert(student[1].name+"-----"+student[1].age)
       //使用getJSON实现异步刷新
        $.getJSON(
            "AjaxServlet",
            {"mobile":$mobile},
            qingqiu
        )
     }

    function qingqiu(result) {
        if (result.mobile == "true") {
            alert("注册失败，电话号已存在!")
        } else {
            alert("注册成功!")
        }
    }
</script>
</body>
</html>
