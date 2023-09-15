<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String root = request.getContextPath(); %>
<%@ page import="com.utility.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>3x4 Grid</title>
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
</head>
<script defer>
    function goToGame(url) {
        // <%=root%>/webgame/01/word-replay.html 로 이동
        movePageUrl = '<%=root%>/webgame/' + url;
        window.location.href = movePageUrl;
    }
</script>
<body>
    <jsp:include page="/menu/top.jsp" />
    

    <div class="border">
        <section class="pt-5 text-center container">
            <div class="row py-lg-5">
                <div class="col-lg-6 col-md-8 mx-auto">
                    <h1 class="fw-light">웹 게임 목록</h1>
              </div>
            </div>
        </section>
    
        <div class="album py-5 bg-light">
            <div class="container">
        
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    <div class="col" onclick="goToGame('01/word-replay.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">끝말잇기</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">끝말잇기 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/01/word-replay.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col" onclick="goToGame('02/calculator.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">계산기</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">계산기 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/02/calculator.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col" onclick="goToGame('03/nuber_baseball.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">숫자 야구 게임</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">숫자 야구 게임 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/03/nuber_baseball.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col" onclick="goToGame('04/lotto.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">로또 추첨기</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">로또 추첨기 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/04/lotto.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col" onclick="goToGame('05/rsp.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">가위바위보</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">가위바위보 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/05/rsp.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col" onclick="goToGame('06/response-check.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">반응속도 체크</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">반응속도 체크 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/06/response-check.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col" onclick="goToGame('07/tictaetoc.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">틱택토 게임</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">틱택토 게임 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/07/tictaetoc.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col" onclick="goToGame('08/text-rpg-class.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">텍스트 RPG 게임</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">텍스트 RPG 게임 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/08/text-rpg-class.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col" onclick="goToGame('09/concentration.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">카드짝 맞추기 게임</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">카드짝 맞추기 게임 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/09/concentration.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col" onclick="goToGame('10/mine-swipper.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">지뢰 찾기 게임</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">지뢰 찾기 게임 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/10/mine-swipper.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col" onclick="goToGame('11/2048.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">2048 게임</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">2048 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/11/2048.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col" onclick="goToGame('12/whack-a-mole.jsp')" style="cursor: pointer;">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                            role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"/>
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">두더지 잡기 게임</text>
                            </svg>
              
                            <div class="card-body">
                                <p class="card-text">두더지 잡기 게임 ver 0.1</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                    </div>
                                    <small class="text-muted">
                                        <%=Utility.getCorrectionDay(root + "/webgame/12/whack-a-mole.jsp") %>
                                    </small>                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    
    
                    
                </div>
            </div>
        </div>
    </div>


    
</body>
</html>
