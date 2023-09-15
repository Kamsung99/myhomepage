<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>짝맞추기</title>
    <script src="game.js" defer></script>
    <style>
      .card {
        display: inline-block;
        margin-right: 20px;
        margin-bottom: 20px;
        width: 70px;
        height: 100px;
        perspective: 140px;  /* 3차원에서 원근감을 준다.   */
      }
 
      .card-inner {
        position: relative;
        width: 100%;
        height: 100%;
        text-align: center;
        transition: transform 0.8s;
        transform-style: preserve-3d; /* 요소의 하위 항목이 3D 공간에 배치 : 카드 앞(.card-front) 뒤(.card-back) 구성*/
      }
 
      .card.flipped .card-inner {
        transform: rotateY(180deg);
      }
 
      .card-front {
        background: navy;
      }
 
      .card-front,
      .card-back {
        position: absolute;
        width: 100%;
        height: 100%;
        border: 1px solid black;
        backface-visibility: hidden; /* 사용자로 향하는 요소의 뒷면을 숨긴다. , 카드 뒤를 안보이게 한다.*/
      }
 
      .card-back {
        transform: rotateY(180deg);
      }
    </style>
  </head>
  <body>
    <div id="wrapper"></div>
  </body>
</html>