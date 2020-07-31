package n.gnd.newsletter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	
	//회원정보를 저장하는 메소드 (profile 칼럼은 제외)
		public boolean insert(N_NewsLetterDto dto) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			int flag = 0;
			try {
				conn = new DbcpBean().getConn();
				//실행할 sql 문 준비하기 
				String sql = "INSERT INTO users"
						+ " (email)"
						+ " VALUES(?)";
				pstmt = conn.prepareStatement(sql);
				//? 에 바인딩 할 값이 있으면 바인딩한다.
				pstmt.setString(1, dto.getL_id());
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
}
