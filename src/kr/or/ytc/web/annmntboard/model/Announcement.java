package kr.or.ytc.web.annmntboard.model;

import java.sql.Date;

public class Announcement {
	private int ANNBOARD_NUM;
	private String ANNBOARD_NAME;
	private String ANNBOARD_PASS;
	private String ANNBOARD_SUBJECT;
	private String ANNBOARD_CONTENT;
	private String ANNBOARD_FILE;
	private int ANNBOARD_RE_REF;
	private int ANNBOARD_RE_LEV;
	private int ANNBOARD_RE_SEQ;
	private int ANNBOARD_READCOUNT;
	private Date ANNBOARD_DATE;
	
	public int getANNBOARD_NUM() {
		return ANNBOARD_NUM;
	}
	public void setANNBOARD_NUM(int annboard_num) {
		ANNBOARD_NUM = annboard_num;
	}
	public String getANNBOARD_NAME() {
		return ANNBOARD_NAME;
	}
	public void setANNBOARD_NAME(String annboard_name) {
		ANNBOARD_NAME = annboard_name;
	}
	public String getANNBOARD_PASS() {
		return ANNBOARD_PASS;
	}
	public void setANNBOARD_PASS(String annboard_pass) {
		ANNBOARD_PASS = annboard_pass;
	}
	public String getANNBOARD_SUBJECT() {
		return ANNBOARD_SUBJECT;
	}
	public void setANNBOARD_SUBJECT(String annboard_subject) {
		ANNBOARD_SUBJECT = annboard_subject;
	}
	public String getANNBOARD_CONTENT() {
		return ANNBOARD_CONTENT;
	}
	public void setANNBOARD_CONTENT(String annboard_content) {
		ANNBOARD_CONTENT = annboard_content;
	}
	public String getANNBOARD_FILE() {
		return ANNBOARD_FILE;
	}
	public void setANNBOARD_FILE(String annboard_file) {
		ANNBOARD_FILE = annboard_file;
	}
	public int getANNBOARD_RE_REF() {
		return ANNBOARD_RE_REF;
	}
	public void setANNBOARD_RE_REF(int annboard_re_ref) {
		ANNBOARD_RE_REF = annboard_re_ref;
	}
	public int getANNBOARD_RE_LEV() {
		return ANNBOARD_RE_LEV;
	}
	public void setANNBOARD_RE_LEV(int annboard_re_lev) {
		ANNBOARD_RE_LEV = annboard_re_lev;
	}
	public int getANNBOARD_RE_SEQ() {
		return ANNBOARD_RE_SEQ;
	}
	public void setANNBOARD_RE_SEQ(int annboard_re_seq) {
		ANNBOARD_RE_SEQ = annboard_re_seq;
	}
	public int getANNBOARD_READCOUNT() {
		return ANNBOARD_READCOUNT;
	}
	public void setANNBOARD_READCOUNT(int annboard_readcount) {
		ANNBOARD_READCOUNT = annboard_readcount;
	}
	public Date getANNBOARD_DATE() {
		return ANNBOARD_DATE;
	}
	public void setANNBOARD_DATE(Date annboard_date) {
		ANNBOARD_DATE = annboard_date;
	}
}
