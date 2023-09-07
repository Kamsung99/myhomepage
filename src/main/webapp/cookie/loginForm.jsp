<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
/*----쿠키설정 내용시작----------------------------*/
String c_id = "";     // ID 저장 여부를 저장하는 변수, Y
String c_id_val = ""; // ID 값
    
Cookie[] cookies = request.getCookies(); 
Cookie cookie=null; 
    
if (cookies != null){ 
    for (int i = 0; i < cookies.length; i++) { 
    cookie = cookies[i]; 
    
    if (cookie.getName().equals("c_id")){ 
        c_id = cookie.getValue();     // Y 
    }else if(cookie.getName().equals("c_id_val")){ 
        c_id_val = cookie.getValue(); // user1... 
    } 
    } 
} 
    
/*----쿠키설정 내용 끝----------------------------*/
    
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/menu/top.jsp"/>
<div class="container mt-5 mx-9">
 
<h2 class='mb-2'>로그인</h2>
  <form 
        action="loginProc.jsp"
        method="post">
        
    <div class="mb-3 mt-3">
      <label class="form-label" for="id">아이디 : </label>
   
        <input type="text" class="form-control" id="id" 
        placeholder="Enter id" name="id" required="required" 
        value='<%=c_id_val %>'>
 
    </div>
    <div class="mb-3 mt-3">
      <label class="form-label" for="pwd">비밀번호</label>        
        <input type="password" class="form-control" id="pwd" 
        placeholder="Enter password" name="passwd" required="required"   >
    </div>
    <div class="form-check mb-3">        
 
          <label class="form-check-label">
          <% 
       if (c_id.equals("Y")){  //id 저장 상태라면 
       %> 
                <input class="form-check-input" type="checkbox" name="c_id" value="Y" checked="checked"> Remember ID
      <% 
       }else{ 
      %> 
 
            <input class="form-check-input" type="checkbox" name="c_id" value="Y" > Remember ID
       <% 
       } 
       %> 
          </label>
        </div>
 
 
    <div class="form-group">        
    
        <button type="submit" class="btn btn-outline-info">로그인</button>
        <button type="button" class="btn btn-outline-success"
         onclick="#">회원가입</button>
        <button type="button" class="btn btn-outline-dark">아이디 찾기</button>
        <button type="button" class="btn btn-outline-dark">패스워드 찾기</button>
 
    </div>
  </form>
  
  </div>
</body>
</html>