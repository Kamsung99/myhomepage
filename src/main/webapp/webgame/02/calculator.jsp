<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="utf-8" />
  <title>계산기</title>
  <style>
    * {
      box-sizing: border-box;
    }
    #result {
      width: 180px;
      height: 50px;
      margin: 5px;
      text-align: right;
    }
    #operator {
      width: 50px;
      height: 50px;
      margin: 5px;
      text-align: center;
    }
    button {
      width: 50px;
      height: 50px;
      margin: 5px;
    }
  </style>
  <script src="game.js" defer></script>
</head>
 
<!-- 계산기 버튼 구현 -->
<body>
  <input readonly id="operator" />
  <input readonly type="number" id="result" /> <!-- 숫자만 입력 -->
  <div class="row">
    <button id="num-7">7</button>
    <button id="num-8">8</button>
    <button id="num-9">9</button>
    <button id="plus">+</button>
  </div>
  <div class="row">
    <button id="num-4">4</button>
    <button id="num-5">5</button>
    <button id="num-6">6</button>
    <button id="minus">-</button>
  </div>
  <div class="row">
    <button id="num-1">1</button>
    <button id="num-2">2</button>
    <button id="num-3">3</button>
    <button id="divide">/</button>
  </div>
  <div class="row">
    <button id="clear">C</button>
    <button id="num-0">0</button>
    <button id="calculate">=</button>
    <button id="multiply">x</button>
  </div>
</body>