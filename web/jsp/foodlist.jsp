<%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2019/5/19
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="head.jsp" %>
<<form class="formsearchYd" action="${pageContext.request.contextPath}/food/list.do" method="post">
<input type="hidden" name="pageNo" value="1">
<input type="hidden" name="pageSize" value="4">
<input type="text" name="foodName">
<input type="submit" value="查询">
<input type="button" value="新增">
</form>
<table class="tableYd">
    <tr>
        <c:forTokens items="食品名称,类型,数量" delims="," var="name">
            <td>${name}</td>
        </c:forTokens>
        <td>操作</td>
    </tr>
    <c:forEach items="${foodlist}" var="food">
        <tr>
            <c:forTokens items="foodName,foodType，foodNum" delims="," var="attr">

                <td>${food.attr}</td>
            </c:forTokens>
            <td>
                <input type="button" value="查看" onclick="javascript:Checkview(${food.id});">
                <input type="button" value="修改" onclick="javascript:Updateview(${food.id});">
                <input type="button" value="删除" onclick="javascript:Del(${this},${food.id});">
            </td>
        </tr>
    </c:forEach>
</table>
<c:import url="rollpage.jsp">
    <c:param name="currentPageNo" value="${pageNo}"></c:param>
    <c:param name="totalCount" value="${totalCount}"></c:param>
    <c:param name="totalPageCount" value="${totalPageCount}"></c:param>
</c:import>
<%@include file="foot.jsp" %>
<script>
    function Checkview(id) {
        window.location.href = "${pageContext.request.contextPath}/food/checkview.do?id=" + id
    }

    function Updateview(id) {
        window.location.href = "${pageContext.request.contextPath}/food/updateview.do?id=" + id
    }

    function Del(obj, id) {
        if (confirm("是否删除")) {
            $.post("${pageContext.request.contextPath}/food/del.do", {"id": id}, function (deldata) {
                    if (deldata.result > 0) {
                        alert("删除成功")
                        obj.parents("tr").remove()
                    }
                    else if (deldata.result == 0) {
                        alert("已删除或不存在")
                    }
                    else {
                        alert("删除失败")
                    }
                }
            )
        }
    }
</script>
