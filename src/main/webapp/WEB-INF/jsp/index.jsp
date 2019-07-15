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
        <span class="btn btn-default">${msg}${name}</span>
    </c:if>
    <button class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg" onclick="add()">添加</button>
</div>
<table id="mytab" class="table table-hover"></table>


<!-- 保存 -->
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="modifly">用户注册</h4>
            </div>
            <div class="modal-body">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" >参数名：</span>
                    <input type="text" class="form-control" placeholder="参数名" aria-describedby="sizing-addon1" id="name">
                </div>
                <br>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" >参数值：</span>
                    <input type="text" class="form-control" placeholder="参数值" aria-describedby="sizing-addon1" id="value">
                </div>
                <br>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="modifly()">提交</button>
            </div>
        </div>
    </div>
</div>
<script>
    window.operateEvents = {
        "click #TableEditor":function (e,value,row,index) {
            upd(row.id);
        },
        "click #TableDelete":function (e,value,row,index) {
            $.ajax({
                url:"data/"+row.id,
                dataType:"json",
                type:"DELETE",
                success:function (res) {
                    if (res.success){
                        alert(res.msg);
                        location.reload(true);
                    }
                }
            })
        }
    }

    init(1)

    function init(pageIndex){
        $('#mytab').bootstrapTable({
            url: 'data',
            search : "true",
            searchOnEnterKey:true,
            pageNumber:pageIndex,
            pageSize: "2",
            showRefresh:true,
            searchAlign:"left",
            buttonsAlign:"left",
            showToggle:"true",
            queryParams: "queryParams",
            toolbar: "#toolbar",
            sidePagination: "true",
            striped: true, // 是否显示行间隔色
            uniqueId: "ID",

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
                {
                    field: 'Button',
                    title: '操作',
                    events: operateEvents,
                    formatter: AddFunctionAlty
                }
            ]
        });
    }

    function AddFunctionAlty(value,row,index) {
        return [
            '<button id = "TableEditor" type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg">修改</button> &nbsp;&nbsp;',
            '<button id = "TableDelete" type="button" class="btn btn-default">删除</button>'
        ]
    }

    var obj = {id:null};

    function add() {
        $("#name").val("");
        $("#value").val("");
        obj = {id:null};
    }

    function upd(id) {
        $.ajax({
            url:"data/"+id,
            dataType:"json",
            type:"GET",
            success:function (res) {
               obj = res;
               console.log(obj);
                $("#name").val(obj.paramName);
                $("#value").val(obj.paramValue);
            }
        })
    }

    function modifly() {
        obj.paramName = $("#name").val();
        obj.paramValue = $("#value").val();
        if (obj.id==null){
            $.ajax({
                url:"data",
                dataType:"json",
                data:obj,
                type:"POST",
                success:function (res) {
                    if (res.success){
                        alert(res.msg);
                        location.reload(true);
                    }
                }
            })
        }else{
            $.ajax({
                url:"data",
                dataType:"json",
                data:obj,
                type:"PUT",
                success:function (res) {
                    if (res.success){
                        alert(res.msg);
                        location.reload(true);
                    }
                }
            })
        }
    }
</script>
</body>
</html>