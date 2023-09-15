<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String root = request.getContextPath(); %>
<%
String currentUrl = request.getRequestURL().toString(); 
//currentUrl
String[] urls = currentUrl.split("/");
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>jsp study</title>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script scr="../WEB-INF/loadfile.js" defer></script>
  </head>
  <body>
    <!--상단메뉴-->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark ">
      <div class="container-fluid position-relative p-1">
        <li class="nav-item">
          <a class="navbar-brand" href="<%=root%>/index.jsp">MENU</a>
        </li>
        
        <div class="collapse navbar-collapse position-absolute end-0" id="collapsibleNavbar">
          <ul class="navbar-nav">
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button">게시판</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=root%>/bbs/list.jsp" onclick="menu_click(this, true)">게시판 목록</a></li>
                <li><a class="dropdown-item" href="<%=root%>/bbs/createForm.jsp" onclick="menu_click(this, true)">게시판 생성</a></li>
              </ul>
            </li>

            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#">공지사항</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=root%>/notice/list.jsp" onclick="menu_click(this, true)">공지사항 목록</a></li>
                <li><a class="dropdown-item" href="<%=root%>/notice/createForm.jsp" onclick="menu_click(this, true)">공지사항 생성</a></li>
              </ul>
            </li>
          
            <li class="nav-item"><a class="nav-link" href="<%=root%>/poll/poll.jsp" onclick="menu_click(this, false)">투표</a></li>
            <li class="nav-item me-2"><a class="nav-link" href="<%=root%>/webgame/web_home.jsp">웹 게임</a></li>
          </ul>
        </div>
      </div>
    </nav>
    
  </body>
</html>
