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
<<form class="formsearchYd" action="${pageContext.request.contextPath}/hehe/list.${obj.list_suffix}">
<input type="hidden" name="pageNo" value="1">
<input type="hidden" name="pageSize" value="3">
<input type="text" name="fds">
<input type="submit" value="fdsf">
<input type="button" value="fdsf">
</form>
<table class="tableYd">
    <tr>
        <c:forTokens items="fds" delims="," var="name">
            <td>${name}</td>
        </c:forTokens>
    </tr>
</table>
<%@include file="foot.jsp" %>
