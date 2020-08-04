package n.gnd.newsletter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import n.gnd.newsletter.dto.N_NewsLetterDto;
import gnd.db.DbcpBean;

public class N_NewsLetterDao {
	private static N_NewsLetterDao dao;
	private N_NewsLetterDao() {}
	public static N_NewsLetterDao getInstance() {
		if(dao==null) {
			dao=new N_NewsLetterDao();
		}
		return dao;
	}
	
	//회원정보를 저장하는 메소드
		public boolean insert(N_NewsLetterDto dto) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			int flag = 0;
			try {
				conn = new DbcpBean().getConn();
				//실행할 sql 문 준비하기 
				String sql = "INSERT INTO news_email"
						+ " (email_id)"
						+ " VALUES(?)";
				pstmt = conn.prepareStatement(sql);
				//? 에 바인딩 할 값이 있으면 바인딩한다.
				pstmt.setString(1, dto.getEmail_id());
				//sql  문 수행하고 update or insert or delete 된 row 의 갯수 리턴받기 
				flag = pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
				}
			}
			if (flag > 0) {
				return true;
			} else {
				return false;
			}
		}
		
		//인자로 전달된  email_id에 해당하는 정보를 리턴하는 메소드
		public N_NewsLetterDto getData(String email_id) {
			//UsersDto 객체의 참조값을 담을 지역 변수 만들기
			N_NewsLetterDto dto=null;
			//필요한 객체의 참조값을 담을 지역변수 만들기 
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				//Connection 객체의 참조값 얻어오기 
				conn = new DbcpBean().getConn();
				//실행할 sql 문 준비하기
				String sql = "SELECT email_id"
						+ " FROM news_email"
						+ " WHERE email_id=?";
				pstmt = conn.prepareStatement(sql);
				//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
				pstmt.setString(1, email_id);
				//select 문 수행하고 결과 받아오기 
				rs = pstmt.executeQuery();
				//반복문 돌면서 결과 값 추출하기 
				if (rs.next()) {
					dto=new N_NewsLetterDto();
					dto.setEmail_id(rs.getString("email_id"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
				}
			}
			return dto;
		}
		
		public List<N_NewsLetterDto> getList(){
			//글목록을 저장할 ArrayList 객체 생성 
			List<N_NewsLetterDto> list=new ArrayList<>();
			//필요한 객체의 참조값을 담을 지역변수 만들기 
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				//Connection 객체의 참조값 얻어오기 
				conn = new DbcpBean().getConn();
				//실행할 sql 문 준비하기
				String sql = "SELECT email_id"
						+ " FROM news_email"
						+ " ORDER BY email_id DESC";
				pstmt = conn.prepareStatement(sql);
				//select 문 수행하고 결과 받아오기 
				rs = pstmt.executeQuery();
				//반복문 돌면서 결과 값 추출하기 
				while (rs.next()) {
					//현재 커서가 위치한 곳의 글정보를 읽어서 BoardDto 객체에 담은 다음
					N_NewsLetterDto dto=new N_NewsLetterDto();
					dto.setEmail_id(rs.getString("email_id"));
					//생성된N_NewsLetterDto객체의 참조값을 ArrayList 객체에 누적 시킨다.
					list.add(dto);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
				}
			}
			return list;
		}
}
