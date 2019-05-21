#set($attr="${attr}")
<%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2019/5/20
  Time: 1:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="head.jsp"%>
<form action="${pageContext.request.contextPath}/${obj}/${add_or_update}view.${url_suffix}" method="post">
    <input value="${obj_id_name}" hidden="hidden" id="id">
    <input value="${${obj}.${obj_select_id_name}}" hidden="hidden" id="selectid">
    <c:forTokens items="${obj_attr_names_beforeselect}" delims=","  var="attr">
        <input type="text" value="${${obj}[attr]}" name="${attr}">
    </c:forTokens>
    <select name="${obj_attr_select_name}}" id="select_attr"> </select>
    <c:forTokens items="${obj_attr_names_afterselect}" delims=","  var="attr">
        <input type="text" value="${${obj}[attr]}" name="${attr}">
    </c:forTokens>
</form>
<%@include file="foot.jsp"%>
<script type="text/javascript" src="/statics/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
    ${document}.load(
        function () {
            $.post("${pageContext.request.contextPath}/${select_obj}/list.${select_url_suffix}",
                function (selectliststr) {
                    $("#select_attr").empty()
                    $("<option>--请选择--</option>").appendTo("#select_attr")
                    if (selectliststr!=null){
                        selectlist=eval(selectliststr)
                        for (var i=0;i<selectlist.length;i++){
                            if (selectlist[i].${select_obj_id}==$("#selectid").val()){
                                $("<option value='"+selectlist[i].${select_obj_id}+"' selected='selected'>"+selectlist[i].${select_obj_attr}+"</option>").appendTo("#select_attr")
                            }else {
                                $("<option value='"+selectlist[i].${select_obj_id}+"'>"+selectlist[i].${select_obj_attr}+"</option>").appendTo("#select_attr")
                            }
                        }
                    }
                })
        }
    )
</script>
