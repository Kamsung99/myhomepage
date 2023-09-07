<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("id");
    String passwd = request.getParameter("passwd");
    // id passwd check();
    boolean flag = true; //성공
    if(flag){
    // ---------------------------------------------- 
    // Cookie 저장, Checkbox는 선택하지 않으면 null 임 
    // ---------------------------------------------- 
      Cookie cookie = null; 
         
      String c_id = request.getParameter("c_id"); // Y, 아이디 저장 여부 
         
      if (c_id != null){  // 처음에는 값이 없음으로 null 체크로 처리
        cookie = new Cookie("c_id", "Y");    // 아이디 저장 여부 쿠키 
        cookie.setMaxAge(60 * 60 * 24 * 365);// 1년
        response.addCookie(cookie);          // 쿠키 기록 
     
        cookie = new Cookie("c_id_val", id); // 아이디 값 저장 쿠키  
        cookie.setMaxAge(60 * 60 * 24 * 365);// 1년
        response.addCookie(cookie);          // 쿠키 기록  
           
      }else{ 
        cookie = new Cookie("c_id", "");     // 쿠키 삭제 
        cookie.setMaxAge(0); 
        response.addCookie(cookie); 
           
        cookie = new Cookie("c_id_val", ""); // 쿠키 삭제 
        cookie.setMaxAge(0); 
        response.addCookie(cookie); 
      } 
      
    }
   // --------------------------------------------- 
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/menu/top.jsp" />
<div class="container">
<div class="container p-5 my-5 border">
<%
   if(flag){
   out.print("로그인이 되었습니다.");
   }else{
   out.print("아이디 또는 비밀번호를 잘못 입력하셨거나 <br>");
   out.print("회원이 아닙니다. 회원가입 하세요.");
   }
 
%>
</div>
<button type="button" class="btn btn-outline-success"
         onclick="location.href='./loginForm.jsp'">로그인</button>
</div>
</body>
</html>