package n.gnd.oc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import n.gnd.db.DbcpBean;
import n.gnd.oc.dto.N_OfficialCDto;

public class N_OfficialCDao {
	private static N_OfficialCDao dao;
	private N_OfficialCDao() {}
	public static N_OfficialCDao getInstance() {
		if(dao==null) {
			dao=new N_OfficialCDao();
		}
		return dao;
	}
	// main image 정보를 저장하는 메소드
	public boolean insert(N_OfficialCDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "INSERT INTO m_officialchannel"
					+ " (officialchannel_id, officialchannel_link, officialchannel_icon_name)"
					+ " VALUES(m_officialchannel_seq.NEXTVAL, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getOfficialchannel_link());
			pstmt.setString(2, dto.getOfficialchannel_icon_name());
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
	// 이미지 목록을 리턴해주는 메소드
	public List<N_OfficialCDto> getList(N_OfficialCDto dto){
		// 이미지 목록을 담을 ArrayList  객체 생성 
		List<N_OfficialCDto> list=new ArrayList<>();
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT officialchannel_id, officialchannel_link, officialchannel_icon_name"
					+ " FROM m_officialchannel";
			pstmt = conn.prepareStatement(sql);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기 
			while (rs.next()) {
				//select 된 파일의 정보를 FileDto 객체에 담고 
				N_OfficialCDto tmp=new N_OfficialCDto();
				tmp.setOfficialchannel_id(rs.getString("officialchannel_id"));
				tmp.setOfficialchannel_link(rs.getString("officialchannel_link"));
				tmp.setOfficialchannel_icon_name(rs.getString("officialchannel_icon_name"));
				//ArrayList 객체에 누적 시킨다. 
				list.add(tmp);
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