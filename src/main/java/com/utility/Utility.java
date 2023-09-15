package com.utility;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.io.File;
import java.text.SimpleDateFormat;

public class Utility {

    public static String getCorrectionDay(String filePath) {
        // 파일 경로 설정

        String fileDirectory = "src/main/webapp" + filePath;

        // File 객체 생성
        File file = new File(fileDirectory);
       
        // 참조하고 있는 파일의 절대 경로
        // System.out.println(file.getAbsolutePath());

        // 파일의 최종 수정 시간 가져오기
        long lastModified = file.lastModified();

        // 현재 시간 구하기
        long currentTime = System.currentTimeMillis();

        // 시간 차이 계산
        long timeDifference = currentTime - lastModified;

        // 시간 단위로 변환
        long seconds = timeDifference / 1000;
        long minutes = seconds / 60;
        long hours = minutes / 60;
        long days = hours / 24;

        String formattedDate;

        if (days > 0) {
            formattedDate = days + " days ago";
        } else if (hours > 0) {
            formattedDate = hours + " hours ago";
        } else if (minutes > 0) {
            formattedDate = minutes + " minutes ago";
        } else {
            formattedDate = seconds + " seconds ago";
        }

        return formattedDate;
    }


    
     /**
     * 오늘,어제,그제 날짜 가져오기
     * @return List- 날짜들 저장
     * SimpleDateFormat("yyyy-MM-dd") 
     */
    public static List<String> getDay(){
        List<String> list = new ArrayList<String>();
        
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd"); 
        Calendar cal = Calendar.getInstance();
        for(int j = 0; j < 3; j++){
            list.add(sd.format(cal.getTime()));
            cal.add(Calendar.DATE, -1);
        }
        
        return list;
    }
    /**
     * 등록날짜와 오늘,어제,그제날짜와 비교
     * @param wdate - 등록날짜
     * @return - true:오늘,어제,그제중 등록날짜와 같음
     *           false:오늘,어제,그제 날짜가 등록날짜와 다 다름
     */
    public static boolean compareDay(String wdate){
        boolean flag = false;
        List<String> list = getDay();
        if(wdate.equals(list.get(0)) 
           || wdate.equals(list.get(1))
           || wdate.equals(list.get(2))){
            flag = true;
        }
          
        return flag;
    }


    public static String checkNull(String str){
        if(str==null) {
            str="";
        }
        return str;
    }

    /**
     * @param totalRecord   전체 레코드수
     * @param nowPage       현재 페이지
     * @param recordPerPage 페이지당 레코드 수
     * @param col              검색 컬럼
     * @param word           검색어
     *  @param url              이동할 페이지
     * @return 페이징 생성 문자열
    */
    public static String paging(int totalRecord, int nowPage, int recordPerPage, String col, String word, String url) {
        int pagePerBlock = 5; // 블럭당 보여지는 페이지 수 -> 5인 경우 (1 2 3 4 5)
        int totalPage = (int) (Math.ceil((double) totalRecord / recordPerPage)); // 전체 페이지
        int totalGrp = (int) (Math.ceil((double) totalPage / pagePerBlock));// 전체 그룹
        int nowGrp = (int) (Math.ceil((double) nowPage / pagePerBlock)); // 현재 그룹
        int startPage = ((nowGrp - 1) * pagePerBlock) + 1; // 특정 그룹의 페이지 목록 시작
        int endPage = (nowGrp * pagePerBlock); // 특정 그룹의 페이지 목록 종료

        StringBuffer str = new StringBuffer();
        str.append("<ul class='pagination justify-content-center'> ");
        int _nowPage = (nowGrp - 1) * pagePerBlock; // 10개 이전 페이지로 이동
        if (nowGrp >= 2) {
                str.append("<li class='page-item'><a class='page-link' href='"+url+"?col=" + col + "&word=" + word
                                + "&nowPage=" + _nowPage + "'>이전</A></li>");
        }

        for (int i = startPage; i <= endPage; i++) {
                if (i > totalPage) {
                        break;
                }

                if (nowPage == i) {
                        str.append("<li class='page-item active'><a class='page-link' href=#>" + i + "</a></li>");
                } else {
                        str.append("<li class='page-item'><a class='page-link' href='"+url+"?col=" + col + "&word=" + word
                                        + "&nowPage=" + i + "'>" + i + "</A></li>");
                }
        }

        _nowPage = (nowGrp * pagePerBlock) + 1; // 10개 다음 페이지로 이동
        if (nowGrp < totalGrp) {
                str.append("<li class='page-item'><a class='page-link' href='"+url+"?col=" + col + "&word=" + word
                                + "&nowPage=" + _nowPage + "'>다음</A></li>");
        }
        str.append("</ul>");

        return str.toString();
    }
}
