<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>지뢰찾기</title>
    <script src="game.js" defer></script>
    <style>
      table {
        border-collapse: collapse;
      }
      td {
        border: 1px solid #bbb;
        text-align: center;
        line-height: 20px;
        width: 20px;
        height: 20px;
        background: #888;
      }
      td.opened {
        background: white;
      }
      td.flag {
        background: red;
      }
      td.question {
        background: orange;
      }
    </style>
  </head>
  <body>
    <jsp:include page="/menu/top.jsp" />
    <form id="form">
      <input placeholder="가로 줄" id="row" size="5" />
      <input placeholder="세로 줄" id="cell" size="5" />
      <input placeholder="지뢰" id="mine" size="5" />
      <button>생성</button>
    </form>
    <div id="timer">0초</div>
    <table id="table">
      <tbody></tbody>
    </table>
    <div id="result"></div>
  </body>
</html>
 