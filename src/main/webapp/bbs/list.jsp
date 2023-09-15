<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi_bbs.jsp"%>
<jsp:useBean id="dao" class="com.bbs.BbsDAO" />

<%
    //검색부분
    String col = Utility.checkNull(request.getParameter("col"));
    String word = Utility.checkNull(request.getParameter("word"));

    if(col.equals("total")) word ="";

    //페이지 처리
    int nowPage=1;
    if(request.getParameter("nowPage")!=null){
        nowPage = Integer.parseInt(request.getParameter("nowPage"));
    }
    int recordPerPage = 5;   //한페이지당 보여줄 레코드갯수
    
    int sno = ((nowPage-1) * recordPerPage); // DB 에서 가져올 시작위치
    int eno = 5; // DB에서 가져올 레코드 갯수

    Map map = new HashMap();
    map.put("col",col);
    map.put("word",word);
    map.put("sno", sno);
    map.put("eno", recordPerPage);

    List<BbsDTO> list = dao.list(map);

    int total = dao.total(col, word);
    //out.print("total: "+total);

    String url = "list.jsp";
         
    String paging = Utility.paging(total, nowPage, recordPerPage, col, word, url);
    System.out.println("paging:"+paging);
        
%>

  <!DOCTYPE html>
  <html lang="en">
    <head>
      <title>Bootstrap Example</title>
      <script>
        function read(bbsno) {
            let url = "read.jsp";
            url += "?bbsno="+bbsno; //javascript 변수는 +로 연결
            url += "&nowPage=<%=nowPage%>"; //jsp변수는 서버에서 오는것이므로 표현식을 사용해야함
            url += "&col=<%=col%>";
            url += "&word=<%=word%>";

            location.href=url;
        }
      </script>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
    </head>
    <body>
      <jsp:include page="/menu/top.jsp" />
      <!--상단메뉴-->
      <div class="container mt-3">
        <h2>게시판 목록</h2>
        <form action="list.jsp">
          <div class="row mb-3 mt-3">
            <div class="col">
              <select class="form-select" name="col">
                <option value="wname"
                <% if(col.equals("wname")) out.print("selected"); %>
                >성명</option>
                <option value="title"
                <% if(col.equals("title")) out.print("selected"); %>
                >제목</option>
                <option value="content"
                <% if(col.equals("content")) out.print("selected"); %>
                >내용</option>
                <option value="tilte_content"
                <% if(col.equals("tilte_content")) out.print("selected"); %>
                >제목+내용</option>
                <option value="total"
                <% if(col.equals("total")) out.print("selected"); %>
                >전체출력</option>
              </select>
            </div>
            <div class="col">
              <input
                type="search"
                class="form-control"
                name="word"
                required="required"
                value="<%=word%>"
              />
            </div>
            <div class="col">
              <button type="submit" class="btn btn-primary">검색</button>
              <button
                type="button"
                class="btn btn-primary"
                onclick="location.href='createForm.jsp'"
              >
                등록
              </button>
            </div>
          </div>
        </form>
        <table class="table table-bordered">
          <thead>
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>작성자</th>
              <th>조회수</th>
              <th>등록날짜</th>
              <th>grpno</th>
              <th>indent</th>
              <th>ansnum</th>
            </tr>
          </thead>
          <tbody>
            <% if (list.size() == 0) { %>
            <tr>
              <td colspan="8">등록된 글이 없습니다.</td>
            </tr>
            <% } else { for (int i = 0; i < list.size(); i++) { BbsDTO dto =
            list.get(i); %>
            <tr>
              <td><%=dto.getBbsno()%></td>
              <td>
                <%
                for(int r=0; r<dto.getIndent(); r++){
                       out.println("&nbsp;&nbsp;");
                }
                if(dto.getIndent()>0)
                    // out.print("[답변]");
                        out.print("<img src='../images/re.jpg' >");
                %>
                <!-- 제목 -->
                <span class="badge bg-dark">텍스트</span>
                <!-- 추후에 동영상을 포함하는지, 이미지를 포함하는지여부에 따라 3가지 배찌를 다르게 주는 코드 작성 예정 
                    <span class="badge bg-primary">동영상</span>
                    <span class="badge bg-success">이미지</span>
                -->
                <a href="javascript:read('<%=dto.getBbsno()%>')"><%=dto.getTitle()%></a>
                <%
                        if (Utility.compareDay(dto.getWdate().substring(0, 10))) {
                        %><img src="../images/new.gif"> 
                        <% } %>
              </td>
              <td><%=dto.getWname()%></td>
              <td><%=dto.getViewcnt()%></td>
              <td><%=dto.getWdate()%></td>
              <td><%=dto.getGrpno()%></td>
              <td><%=dto.getIndent()%></td>
              <td><%=dto.getAnsnum()%></td>
            </tr>
            <% } } %>
          </tbody>
        </table>

        <%=paging %>
        
      </div>
    </body>
  </html></BbsDTO
>
