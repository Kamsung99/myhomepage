<%@ page contentType="text/html; charset=UTF-8" %> 
<% 
//client안에 있는 모든 쿠키를 전부 읽어 옵니다. 
Cookie[] cookies = request.getCookies(); 
Cookie cookie = null; 
 
String name=null;  
int kuk=0; 
int eng=0; 
 
for (int i = 0; i < cookies.length; i++) { 
  //쿠키 변수를 각각 추출합니다. 
  cookie = cookies[i]; 
 
  if (cookie.getName().equals("name")){ 
    name = cookie.getValue(); 
  }else if (cookie.getName().equals("kuk")){ 
    kuk = Integer.parseInt(cookie.getValue()); 
  }else if (cookie.getName().equals("eng")){ 
    eng = Integer.parseInt(cookie.getValue()); 
  } 
} 
%> 
<!DOCTYPE html>
<html>
<head>
  <title>쿠키예제</title>
  <meta charset="utf-8">
</head>
<body>
<jsp:include page="/menu/top.jsp"/>
<div class="container">
<div class="well well-lg">
<br>
<% 
if (name != null){ // Cookie 변수가 있다면  
  out.println ("성명 : " + name + "<br>"); 
  out.println ("국어 : " + kuk + "<br>"); 
  out.println ("영어 : " + eng + "<br>"); 
  out.println ("총점 : " + (kuk+eng) + "<br>"); 
  out.println ("평균 : " + (kuk+eng)/2 + "<br>"); 
  out.println ("30초 후 쿠키는 인식이 되지 않습니다." + "<br>"); 
     
}else{ 
    out.println("쿠키를 읽어 들일수 없습니다." + "<br>"); 
} 
%> 
</div>
</div>
</body>
</html>