<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
include file="/ssi/ssi_bbs.jsp"%>
<jsp:useBean id="dao" class="com.bbs.BbsDAO" />
<jsp:useBean id="dto" class="com.bbs.BbsDTO" />
<jsp:setProperty name="dto" property="*" />
<% Map map = new HashMap();
map.put("bbsno", dto.getBbsno());
map.put("passwd", dto.getPasswd());
boolean pflag = dao.passCheck(map);
boolean flag = false;
if (pflag) flag = dao.delete(dto.getBbsno()); %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>게시판 삭제</title>
    <meta charset="utf-8" />
  </head>
  <body>
    <jsp:include page="/menu/top.jsp" />
    <div class="container mt-3">
      <div class="container p-5 my-5 border">
        <% if (!pflag) { out.print("wrong password"); } else if (flag) {
        out.print("Success delete writing"); } else { out.print("Fail update");
        } %>
      </div>
      <% if (!pflag) { %>
      <button class="btn btn-dark" onclick="history.back()">다시시도</button>
      <% } %>
      <button class="btn btn-light" onclick="location.href='createForm.jsp'">
        다시 등록
      </button>
      <button
        type="button"
        class="btn btn-light"
        onclick="location.href='list.jsp'"
      >
        목록
      </button>
    </div>
  </body>
</html>
