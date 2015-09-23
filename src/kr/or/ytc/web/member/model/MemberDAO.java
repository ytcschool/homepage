package kr.or.ytc.web.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.or.ytc.web.utility.DBUtil;

public class MemberDAO {

	PreparedStatement pstmt;
	ResultSet rs;

	// 회원 가입자 이름 추출 메소드
	public String pickMember(MemberBean member) {
		Connection con = DBUtil.getConnection();
		String sql = "SELECT MEMBER_NAME FROM MEMBER WHERE MEMBER_ID=?";
		String mem_name = "";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getMEMBER_ID());
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				mem_name = rs.getString(1);
			} else {
				mem_name = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(pstmt);
			DBUtil.close(con);
		}
		return mem_name;
	}
	
	// 회원정보 확인 메소드
	public int isMember(MemberBean member) {

		Connection con = DBUtil.getConnection();
		String sql = "SELECT MEMBER_PW FROM MEMBER WHERE MEMBER_ID=?";
		int result = -1;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getMEMBER_ID());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("MEMBER_PW").equals(member.getMEMBER_PW())) {
					result = 1;
				} else {
					result = 0;
				}
			} else {
				result = -1;
			}
		} catch (Exception ex) {
			System.out.println("isMember 에러: " + ex);
		} finally {
			DBUtil.close(rs);
			DBUtil.close(pstmt);
			DBUtil.close(con);
		}

		return result;
	}

	// 회원가입 처리 메소드
	public boolean joinMember(MemberBean member) {
		Connection con = DBUtil.getConnection();
		String sql = "INSERT INTO MEMBER VALUES (?,?,?,?,?,?,?,?)";
		int result = 0;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getMEMBER_ID());
			pstmt.setString(2, member.getMEMBER_PW());
			pstmt.setString(3, member.getMEMBER_NAME());
			pstmt.setInt(4, member.getMEMBER_YEAR());
			pstmt.setInt(5, member.getMEMBER_MONTH());
			pstmt.setInt(6, member.getMEMBER_DAY());
			pstmt.setString(7, member.getMEMBER_GENDER());
			pstmt.setString(8, member.getMEMBER_EMAIL());
			result = pstmt.executeUpdate();
			
			if (result != 0) {
				return true;
			}
		} catch (Exception ex) {
			System.out.println("joinMember 에러: " + ex);
		} finally {
			DBUtil.close(rs);
			DBUtil.close(pstmt);
			DBUtil.close(con);
		}

		return false;
	}

	// ID 중복체크 메소드
	public int confirmId(MemberBean member) {
		Connection con = DBUtil.getConnection();
		String sql = "SELECT * FROM MEMBER WHERE MEMBER_ID=?";
		int x = -1;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getMEMBER_ID());
			System.out.println("sql: " + sql + ", " + " ID: " + member.getMEMBER_ID());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				// 해당 ID 있음
				x = 1;
			} else {
				// 해당 ID 없음
				x = -1;
			}
			System.out.println("DAO안: " + x);
		} catch (Exception ex) {
			System.out.println("confirmId 에러: " + ex);
		} finally {
			DBUtil.close(rs);
			DBUtil.close(pstmt);
			DBUtil.close(con);
		}
		return x;
	}

}