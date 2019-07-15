<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!--输出,条件,迭代标签库-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="../js/jquery-2.1.4.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="../js/bootstrap.min.js"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>

    <script src="../js/bootstrap-table.min.js"></script>
    <link href="../css/bootstrap-table.min.css" rel="stylesheet" />
    <script src="../js/bootstrap-table-zh-CN.min.js"></script>
    <title>主页</title>
</head>
<body>
<div>
    <c:if test="${success ==true}">
        <span>${msg}</span>
    </c:if>
    <button onclick="currentUser()">查询当前用户</button>
</div>
<table id="mytab" class="table table-hover"></table>
<script>
    $('#mytab').bootstrapTable({
        url: 'data',
        queryParams: "queryParams",
        toolbar: "#toolbar",
        sidePagination: "true",
        striped: true, // 是否显示行间隔色
        //search : "true",
        uniqueId: "ID",
        pageSize: "5",
        pagination: true, // 是否分页
        sortable: true, // 是否启用排序
        columns: [{
            field: 'id',
            title: '编号'
        },
            {
                field: 'paramName',
                title: '参数名'
            },
            {
                field: 'paramValue',
                title: '参数值'
            },
        ]
    });
    function currentUser() {
        $.get("/user/currentUser",function (data) {
            alert(data);
        })
    }
</script>
</body>
</html>