package kr.or.ytc.web.annmntboard.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import kr.or.ytc.web.member.model.MemberBean;
import kr.or.ytc.web.utility.DBUtil;

public class AnnouncementDAO {
	DataSource ds;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public AnnouncementDAO() {
		try{
			Context init = new InitialContext();
	  	    ds = (DataSource) init.lookup("java:comp/env/jdbc/EmployeeDB");
	  		
		}catch(Exception ex){
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
		
	}
	//글의 개수 구하기
	public int getListCount() {
		int x= 0;
		
		try{
			
			con=ds.getConnection();
			System.out.println("getConnection");
			pstmt=con.prepareStatement("select count(*) from annboard");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				x=rs.getInt(1);
			}
		}catch(Exception ex){
			System.out.println("getListCount 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return x;
	}
	
	//글 목록 보기
	public List getBoardList(int page,int limit){
		List list = new ArrayList();
		
		int startrow=(page-1)*10+1; //읽기 시작할 row 번호.
		int endrow=startrow+limit-1; //읽을 마지막 row 번호.		
		String board_list_sql="select * from annboard order by ANNBOARD_NUM desc limit "+(startrow-1)+","+10;
	
		

		try{
			con = ds.getConnection();
				
			pstmt = con.prepareStatement(board_list_sql);
			/*MYSQL에서 필요없음.
			pstmt.setInt(1, startrow);
			System.out.println("pstmt.setInt1");
			pstmt.setInt(2, endrow);
			System.out.println("pstmt.setInt2");
			*/
			rs = pstmt.executeQuery();
			//System.out.println("rs=");
			//int n =0;
			//System.out.println("rs before");
			while(rs.next()){
				//n= n+1; // 리스트 체크용
				//System.out.println("ok " + String.valueOf(n)); //리스트 체크용
				Announcement annboard = new Announcement();
				annboard.setANNBOARD_NUM(rs.getInt("ANNBOARD_NUM"));
				annboard.setANNBOARD_NAME(rs.getString("ANNBOARD_NAME"));
				annboard.setANNBOARD_SUBJECT(rs.getString("ANNBOARD_SUBJECT"));
				annboard.setANNBOARD_CONTENT(rs.getString("ANNBOARD_CONTENT"));
				annboard.setANNBOARD_FILE(rs.getString("ANNBOARD_FILE"));
				annboard.setANNBOARD_RE_REF(rs.getInt("ANNBOARD_RE_REF"));
				annboard.setANNBOARD_RE_LEV(rs.getInt("ANNBOARD_RE_LEV"));
				annboard.setANNBOARD_RE_SEQ(rs.getInt("ANNBOARD_RE_SEQ"));
				annboard.setANNBOARD_READCOUNT(rs.getInt("ANNBOARD_READCOUNT"));
				annboard.setANNBOARD_DATE(rs.getDate("ANNBOARD_DATE"));
				list.add(annboard);
			}
			System.out.println("getboardlist end");
			return list;
		}catch(Exception ex){
			System.out.println("getBoardList 에러 : " + ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	//글 내용 보기.
	public Announcement getDetail(int num) throws Exception{
		
		Announcement annboard = null;
		try{
			con = ds.getConnection();
			pstmt = con.prepareStatement(
					"select * from annboard where ANNBOARD_NUM = ?");
			pstmt.setInt(1, num);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				annboard = new Announcement();
				annboard.setANNBOARD_NUM(rs.getInt("ANNBOARD_NUM"));
				annboard.setANNBOARD_NAME(rs.getString("ANNBOARD_NAME"));
				annboard.setANNBOARD_SUBJECT(rs.getString("ANNBOARD_SUBJECT"));
				annboard.setANNBOARD_CONTENT(rs.getString("ANNBOARD_CONTENT"));
				annboard.setANNBOARD_FILE(rs.getString("ANNBOARD_FILE"));
				annboard.setANNBOARD_RE_REF(rs.getInt("ANNBOARD_RE_REF"));
				annboard.setANNBOARD_RE_LEV(rs.getInt("ANNBOARD_RE_LEV"));
				annboard.setANNBOARD_RE_SEQ(rs.getInt("ANNBOARD_RE_SEQ"));
				annboard.setANNBOARD_READCOUNT(rs.getInt("ANNBOARD_READCOUNT"));
				annboard.setANNBOARD_DATE(rs.getDate("ANNBOARD_DATE"));
			}
			return annboard;
		}catch(Exception ex){
			System.out.println("getDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	//글 등록
	public boolean boardInsert(Announcement annboard){
		
		int num =0;
		String sql="";
		
		int result=0;
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement("select max(annboard_num) from annboard");
			rs = pstmt.executeQuery();
			
			if(rs.next())
				num =rs.getInt(1)+1;
			else
				num=1;
			
			sql="insert into annboard (ANNBOARD_NUM,ANNBOARD_NAME,ANNBOARD_PASS,ANNBOARD_SUBJECT,";
			sql+="ANNBOARD_CONTENT, ANNBOARD_FILE, ANNBOARD_RE_REF,"+
				"ANNBOARD_RE_LEV,ANNBOARD_RE_SEQ,ANNBOARD_READCOUNT,"+
				"ANNBOARD_DATE) values(?,?,?,?,?,?,?,?,?,?,now())";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, annboard.getANNBOARD_NAME());
			pstmt.setString(3, annboard.getANNBOARD_PASS());
			pstmt.setString(4, annboard.getANNBOARD_SUBJECT());
			pstmt.setString(5, annboard.getANNBOARD_CONTENT());
			pstmt.setString(6, annboard.getANNBOARD_FILE());
			pstmt.setInt(7, num);
			pstmt.setInt(8, 0);
			pstmt.setInt(9, 0);
			pstmt.setInt(10, 0);
			
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			System.out.println("boardInsert 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
		}
		return false;
	}
	
	//글 수정
	public boolean boardModify(Announcement modifyboard) throws Exception{
		
		String sql="update annboard set ANNBOARD_SUBJECT=?,ANNBOARD_CONTENT=? where ANNBOARD_NUM=?";
		
		try{
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, modifyboard.getANNBOARD_SUBJECT());
			pstmt.setString(2, modifyboard.getANNBOARD_CONTENT());
			pstmt.setInt(3, modifyboard.getANNBOARD_NUM());
			pstmt.executeUpdate();
			return true;
		}catch(Exception ex){
			System.out.println("boardModify 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null) try{con.close();}catch(SQLException ex){}
			}
		return false;
	}
	
	//글 삭제
	public boolean boardDelete(int num){
		System.out.println("boardDelete");
		String board_delete_sql="delete from annboard where ANNBOARD_num=?";
		
		int result=0;
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement(board_delete_sql);
			pstmt.setInt(1, num);
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			System.out.println("boardDelete 에러 : "+ex);
		}	finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null) con.close();
				}
				catch(Exception ex){}
			
		}
		
		return false;
	}
	

	//체크박스 삭제
	public boolean boardChkDelete(int chkdel){
		System.out.println("boardChkDelete");
		String board_chkdelete_sql="delete from annboard where ANNBOARD_num=?";
		
		int result=0;
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement(board_chkdelete_sql);
			pstmt.setInt(1, chkdel);
					
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			System.out.println("boardChkDelete 에러 : "+ex);
		}	finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null) con.close();
				}
				catch(Exception ex){}
		}
		return false;
	}	

	
	//조회수 업데이트
	public void setReadCountUpdate(int num) throws Exception{
		
		String sql="update annboard set ANNBOARD_READCOUNT = "+
			"ANNBOARD_READCOUNT+1 where ANNBOARD_NUM = "+num;
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.executeUpdate();
		}catch(SQLException ex){
			System.out.println("setReadCountUpdate 에러 : "+ex);
		}
		finally{
			try{
			if(pstmt!=null)pstmt.close();
			if(con!=null) con.close();
			}
			catch(Exception ex){}
		
	}
	}
	
	//글쓴이인지 확인
	public boolean isBoardWriter(int num,String pass){
		
		String board_sql="select * from annboard where ANNBOARD_NUM=?";
		
		try{
			con = ds.getConnection();
			pstmt=con.prepareStatement(board_sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			rs.next();
			
			if(pass.equals(rs.getString("ANNBOARD_PASS"))){
				return true;
			}
		}catch(SQLException ex){
			System.out.println("isBoardWriter 에러 : "+ex);
		}
	finally{
			try{
			if(pstmt!=null)pstmt.close();
			if(con!=null) con.close();
			}
			catch(Exception ex){}
		
	}
		return false;
	}
	
		
	//관리자인지 확인
	public int isAdmin(String admin){
		
		Connection con = DBUtil.getConnection();
		String sql = "SELECT MEMBER_PW FROM MEMBER WHERE MEMBER_ID=?";
		int result = -1;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "admin");
			rs = pstmt.executeQuery();

			
			if (rs.next()) {
				if (rs.getString("MEMBER_PW").equals("apmsetup")) {
					result = 1;
				} else {
					result = 0;
				}
			} else {
				result = -1;
			}
		} catch (Exception ex) {
			System.out.println("isAdmin 에러: " + ex);
		} finally {
			DBUtil.close(rs);
			DBUtil.close(pstmt);
			DBUtil.close(con);
		}
		return result;
	}

}
