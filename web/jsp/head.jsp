<%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2019/5/19
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>${首页名字}</title>
</head>
<body>
<header class="header">
<c:if test="${${LoginSessionName}.${LoginUserName}!=null} and ${${LoginSessionName}.${LoginUserName}!=''}">您好！${${LoginSessionName}.${LoginUserName}}</c:if>
</header>>

