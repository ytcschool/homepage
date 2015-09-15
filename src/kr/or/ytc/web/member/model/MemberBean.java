package kr.or.ytc.web.member.model;

public class MemberBean {
	private String MEMBER_ID;
	private String MEMBER_PW;
	private String MEMBER_NAME;
	private int MEMBER_YEAR;
	private int MEMBER_MONTH;
	private int MEMBER_DAY;
	private String MEMBER_GENDER;
	private String MEMBER_EMAIL;

	public String getMEMBER_ID() {
		return MEMBER_ID;
	}

	public void setMEMBER_ID(String member_id) {
		MEMBER_ID = member_id;
	}

	public String getMEMBER_PW() {
		return MEMBER_PW;
	}

	public void setMEMBER_PW(String member_pw) {
		MEMBER_PW = member_pw;
	}

	public String getMEMBER_NAME() {
		return MEMBER_NAME;
	}

	public void setMEMBER_NAME(String member_name) {
		MEMBER_NAME = member_name;
	}

	public int getMEMBER_YEAR() {
		return MEMBER_YEAR;
	}

	public void setMEMBER_YEAR(int mEMBER_YEAR) {
		MEMBER_YEAR = mEMBER_YEAR;
	}

	public int getMEMBER_MONTH() {
		return MEMBER_MONTH;
	}

	public void setMEMBER_MONTH(int mEMBER_MONTH) {
		MEMBER_MONTH = mEMBER_MONTH;
	}

	public int getMEMBER_DAY() {
		return MEMBER_DAY;
	}

	public void setMEMBER_DAY(int mEMBER_DAY) {
		MEMBER_DAY = mEMBER_DAY;
	}
	
	public String getMEMBER_GENDER() {
		return MEMBER_GENDER;
	}

	public void setMEMBER_GENDER(String member_gender) {
		MEMBER_GENDER = member_gender;
	}

	public String getMEMBER_EMAIL() {
		return MEMBER_EMAIL;
	}

	public void setMEMBER_EMAIL(String member_email) {
		MEMBER_EMAIL = member_email;
	}
	
}