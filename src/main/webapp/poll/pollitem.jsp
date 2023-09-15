<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi_poll.jsp"%>
<jsp:useBean id="service" class="com.poll.PollService" />
 
<%
int num = 0;
 
if (!(request.getParameter("num") == null || request.getParameter("num").equals(""))) {
    num = Integer.parseInt(request.getParameter("num"));
} else {
    num = service.getMaxNum();
}
 
PollDTO dto = service.read(num);
 
Vector<PollitemDTO> vlist = service.itemList(num);


//투표결과 확인
 
int sum = service.sumCount(num);
 
Vector<PollitemDTO> result = service.getView(num);
String color[] = {"bg-success","bg-info","bg-warning","bg-danger","bg-dark","bg-secondary"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    function checkb(f) {
        let items = f.itemnum;
 
        let cnt = 0;
        //alert(items.length)
        for (let i = 0; i < items.length; i++) {
            if (items[i].checked) {
                cnt++;
            }
        }
        if (cnt == 0) {
            alert('항목을 체크해주세요');
            return false;
        }
 
    }

    // 투표 종료 시 경고 창 표시
    function showVoteClosedAlert() {
        alert('투표가 아닙니다.');
    }
</script>
</head>
<body>

<div class="container mt-2">
    <h4>설문 정보</h4>
    <%
    if (dto != null) {
    %>
    <div class="container p-3 my-5 border">
        <div class="text-center">
            <label class="form-label">
                <%=dto.getSdate()%> ~ <%=dto.getEdate()%>
                <span class="m-l-7">(총 투표자 : <%=sum%>명)</span>
            </label>
        </div>
        
        <div class="text-center">
            <label class="m-10">설문 내용 : <%=dto.getQuestion()%></label>
        </div>
        
        <form action="pollProc.jsp" class="p-3"
            onsubmit='return checkb(this)'>
            <%
            for (int i = 0; i < vlist.size(); i++) {
                PollitemDTO idto = vlist.get(i);
 
                if (dto.getType() == 1) { //복수선택 확인
            %>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id='check<%=i%>'
                       name='itemnum' value='<%=idto.getItemnum()%>'>
                <label class="form-check-label" for='check<%=i%>'><%=idto.getItem()%></label>
            </div>
            <%
                } else {
            %>
            <div class="form-check">
                <input type="radio" class="form-check-input" id='radio<%=i%>' 
                       name="itemnum" value="<%=idto.getItemnum()%>">
                <label class="form-check-label" for='radio<%=i%>'><%=idto.getItem()%></label>
            </div>
 
            <%
               } //if end
            } //for end
 
            LocalDate now = LocalDate.now(); //현재 날짜
            LocalDate edate_ = LocalDate.parse(dto.getEdate()); //설문 종료날짜
            LocalDate sdate_ = LocalDate.parse(dto.getSdate()); //설문 시작날짜

            /* System.out.println(now);  
               System.out.println(edate_); */
 
            if (dto.getActive() == 0 || now.isAfter(edate_) || now.isBefore(sdate_)) { //투표 날짜가 지나거나 이전인 경우
            %>
 
            <button type='button' class="btn btn-light mt-5"
                data-bs-toggle="tooltip" title="투표기간이 아닙니다!" onclick="showVoteClosedAlert()">투표</button>

            <%
            } else {
            %>
            <button class="btn btn-light mt-5">투표</button>
            <%
            }
            %>
 
            <button type="button" class="btn btn-light mt-5"
                data-bs-toggle="modal" data-bs-target="#myModal">결과</button>
            <%
            if (dto.getActive() == 0 || now.isAfter(edate_) || now.isBefore(sdate_)) { //종료페이지 지난날짜인 경우
            %>
            <div class="text-center">
                <label class="form-label m-10" style="color: red;">투표 기간이 아닙니다</label>
            </div>
            <%
                }
            %>
 
        </form>
    </div>
    <%
    } else {
    %>
    <div class="container p-5 my-5 border">
        <label class="m-10">등록된 설문이 없습니다.</label>
    </div>
    <%
    }
    %>
</div>
</body>
</html>
<%
if (dto != null) { // 등록된 설문이 있는 경우
%>
 
<!-- 투표 결과 Modal -->
<div class="modal" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
 
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">투표 결과</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
 
            <!-- Modal body -->
            <div class="modal-body">
 
                <ul class="list-group">
                    <li class="list-group-item">Q : <%=dto.getQuestion()%></li>
                    <li class="list-group-item">총 투표자 : <%=sum%>명
                    </li>
                </ul>
 
                <ol class="list-group list-group">
                    <%
                    if (sum > 0) {
                        for (int i = 0; i < result.size(); i++) {
                            PollitemDTO idtor = result.get(i);
                            String item = idtor.getItem();//아이템
                            int j = (int) (Math.random() * (color.length - 1) + 0);
                            String hRGB = color[j];
                            double count = idtor.getCount();//투표수
                            int ratio = (int) (Math.ceil(count / sum * 100));
 
                            //System.out.println("radio:" + ratio);
                    %>
 
                    <li class="list-group-item">
                        <div class="fw-bold">
                            <%=item%>
                        </div>

                        <div class="row">
                            <div class="col text-start"><%=(int) count%>표</div>
                            <div class="col text-end"><%=ratio%>%</div>
                        </div>

                        <div class="progress">
                            <div class="progress-bar <%=hRGB%>" style="width:<%=ratio%>%"></div>
                        </div>
                    </li>
                    <%
                        } //for
                        out.println("</ol>");
                    } else {
                        out.println("<ul class='list-group'><li class='list-group-item'>투표를 먼저 해주세요</li></ul>");
                    }
                    %>
            </div>
 
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
            </div>
 
        </div>
    </div>
</div>
<!-- Modal end -->
 
<%
}
%>