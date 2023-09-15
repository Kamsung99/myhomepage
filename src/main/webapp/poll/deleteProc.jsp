<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/ssi/ssi_poll.jsp"%>
<jsp:useBean id="dao" class="com.poll.PollDAO" />
<jsp:useBean id="dto" class="com.poll.PollDTO" />
<jsp:setProperty name="dto" property="*" />
<% Map map = new HashMap();
map.put("num", dto.getNum()); %>
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
        <% if ( dao.delete(dto.getNum()) ) {
        out.print("Success delete writing"); } else { out.print("Fail update");
        }
        %>
      </div>
      <button
        type="button"
        class="btn btn-light"
        onclick="location.href='poll.jsp'"
      >
        목록
      </button>
    </div>
  </body>
</html>
