<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <ul>
      <li><a href="/user/login.html">로그인페이지</a></li>
      <li><a href="/user/join.html">회원가입페이지</a></li>
      <li><a href="/user/userInfo.jsp">회원정보페이지</a></li>
      <li><a href="/post/list.html">글목록페이지</a></li>
   </ul>
   
   <%
   // request는 BufferedReader로 읽는 모든 정보를 자바 오브젝트로 바꾼 결정체 (톰캣이 해줌)
   // http://localhost/user/userInfo.jsp?name=김수현
   // getParameter() 쿼리스트링 파싱해주는 메서드
   String name = request.getParameter("name");
   String phone = request.getParameter("phone");
   
   // DB연결 - SELECT
   // String name = "김수현";
   // String phone = "01022223333";
   %>
   
   <h1>회원정보 페이지입니다. - 인증 필요</h1>
   <h3>이름 : <%=name %> 전화번호 : <%=phone %></h3>
   <hr />
</body>
</html>