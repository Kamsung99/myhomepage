package com.bbs;

public class BbsDTO {
    private int bbsno;
    private String wname;
    private String title;
    private String content;
    private String passwd;
    private int viewcnt;
    private String wdate;
    private int grpno;
    private int indent;
    private int ansnum;

    public int getBbsno() {
        return this.bbsno;
    }

    public void setBbsno(int bbsno) {
        this.bbsno = bbsno;
    }

    public String getWname() {
		return this.wname;
	}

    public void setWname(String wname) {
		this.wname = wname;
	}

    public String getTitle() {
		return this.title;
	}

    public void setTitle(String title) {
		this.title = title;
	}

    public String getContent() {
		return this.content;
	}

    public void setContent(String content) {
		this.content = content;
	}

    public String getPasswd() {
		return this.passwd;
	}

    public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

    public int getViewcnt() {
        return this.viewcnt;
    }

    public void setViewcnt(int viewcnt) {
        this.viewcnt = viewcnt;
    }

    public String getWdate() {
		return this.wdate;
	}

    public void setWdate(String wdate) {
		this.wdate = wdate;
	}

    public int getGrpno() {
        return this.grpno;
    }

    public void setGrpno(int grpno) {
        this.grpno = grpno;
    }

    public int getIndent() {
        return this.indent;
    }

    public void setIndent(int indent) {
        this.indent = indent;
    }

    public int getAnsnum() {
        return this.ansnum;
    }

    public void setAnsnum(int ansnum) {
        this.ansnum = ansnum;
    }

    public BbsDTO(){

    }

    public String toString(){
        return "?";
    }
}
