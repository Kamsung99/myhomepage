<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="game.js" defer></script>
    <title>숫자야구</title>
  </head>
  <body>
    <jsp:include page="/menu/top.jsp" />
    <form id="form">
      <input type="text" id="input" />
      <button>확인</button>
    </form>
    <div id="logs"></div>
  </body>
</html>