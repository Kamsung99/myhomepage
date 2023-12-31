<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="utf-8" />
    <title>가위바위보</title>
    <style>
      #computer {
        width: 145px;
        height: 200px;
      }
    </style>
    <script src="./game.js" defer></script>
  </head>
 
  <body>
    <jsp:include page="/menu/top.jsp" />
    <div id="computer"></div>
    <div>
      <button id="scissors" class="btn">가위</button>
      <button id="rock" class="btn">바위</button>
      <button id="paper" class="btn">보</button>
    </div>
    <div id="score">0</div>
  </body>
</html>