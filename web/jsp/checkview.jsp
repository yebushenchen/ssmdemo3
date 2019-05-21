<%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2019/5/20
  Time: 1:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="head.jsp"%>
<form action="${pageContext.request.contextPath}/${obj}/checkview.${url_suffix}" method="post">
    <input value="${obj_id_name}" hidden="hidden" id="id">
    <c:forTokens items="${obj_attr_names}" delims=","  var="attr">
        <input type="text" value="${${obj}.attr}" readonly="readonly">
    </c:forTokens>
</form>
<%@include file="foot.jsp"%>
