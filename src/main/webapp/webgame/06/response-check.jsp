<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>반응속도</title>
    <style>
      #screen {
        width: 300px;
        height: 200px;
        text-align: center;
        user-select: none;
      }
      #screen.waiting {
        background-color: aqua;
      }
      #screen.ready {
        background-color: red;
        color: white;
      }
      #screen.now {
        background-color: greenyellow;
      }
    </style>
    <script src="./games.js" defer></script>
  </head>
 
  <body>
    <jsp:include page="/menu/top.jsp" />
    <div id="screen" class="waiting">클릭해서 시작하세요</div>
    <div id="result"></div>
  </body>
</html>