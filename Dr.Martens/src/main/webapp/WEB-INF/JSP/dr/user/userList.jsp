<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="UTF-8">
<title>User List</title>
</head>
<body>
<c:forEach var="p" items="${list}">
이름:<a href='/admin/user/detail/${p.u_email }'>${p.name }</a>
이메일:${p.u_email}
나이:${p.birth }
</br>
</c:forEach>
</body>
</html>