<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="/ssi/ssi_bbs.jsp"%>
<jsp:useBean id="dao" class="com.bbs.BbsDAO" />

<% int bbsno = Integer.parseInt(request.getParameter("bbsno"));
String nowPage = request.getParameter("nowPage");
String col = request.getParameter("col");
String word = request.getParameter("word");

dao.upViewcnt(bbsno);
BbsDTO dto = dao.read(bbsno);
String content = dto.getContent().replaceAll("\r\n", "<br />");
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>조회</title>
    <script type="text/javascript">
      function list() {
        let url = "list.jsp";
        url += "?nowPage=<%=nowPage%>";
        url += "&col=<%=col%>";
        url += "&word=<%=word%>";

        location.href = url;
      }
      function reply() {
        let url = "replyForm.jsp";
        url += "?nowPage=<%=nowPage%>";
        url += "&col=<%=col%>";
        url += "&word=<%=word%>";
        url += "&bbsno=<%=bbsno%>";

        location.href = url;
      }
      function update() {
        let url = "updateForm.jsp";
        url += "?nowPage=<%=nowPage%>";
        url += "&col=<%=col%>";
        url += "&word=<%=word%>";
        url += "&bbsno=<%=bbsno%>";

        location.href = url;
      }
      function del() {
        var url = "deleteForm.jsp";
        url += "?nowPage=<%=nowPage%>";
        url += "&col=<%=col%>";
        url += "&word=<%=word%>";
        url += "&bbsno=<%=bbsno%>";

        location.href = url;
      }
    </script>
  </head>
  <body>
    <jsp:include page="/menu/top.jsp" />
    <div class="container mt-3 mb-3">
      <h3>조회</h3>
      <ul class="list-group">
        <li class="list-group-item">작성자: <%=dto.getWname()%></li>
        <li class="list-group-item">제목: <%=dto.getTitle()%></li>
        <li class="list-group-item" style="height: 250px; overflow-y: scroll">
          <%=content%>
        </li>
        <li class="list-group-item">조회수: <%=dto.getViewcnt()%></li>
        <li class="list-group-item">등록일: <%=dto.getWdate()%></li>
      </ul>

      <br />

      <button
        type="button"
        class="btn btn-outline-dark"
        onclick="location.href='./createForm.jsp'"
      >
        등록
      </button>
      <button type="button" class="btn btn-outline-dark" onclick="del()">
        삭제
      </button>
      <button type="button" class="btn btn-outline-dark" onclick="update()">
        수정
      </button>
      <button type="button" class="btn btn-outline-dark" onclick="reply()">
        답변
      </button>
      <button type="button" class="btn btn-outline-dark" onclick="list()">
        목록
      </button>
    </div>
  </body>
</html>
