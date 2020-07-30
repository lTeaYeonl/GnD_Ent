package n.gnd.image.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import n.gnd.db.DbcpBean;
import n.gnd.image.dto.N_ImageDto;

public class N_ImageDao {
	private static N_ImageDao dao;
	private N_ImageDao() {}
	public static N_ImageDao getInstance() {
		if(dao==null) {
			dao=new N_ImageDao();
		}
		return dao;
	}
	// main image 정보를 저장하는 메소드
	public boolean insert(N_ImageDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "INSERT INTO m_image"
					+ " (image_id, artist_id, artist_name, artist_e_name, image_name)"
					+ " VALUES(m_image_seq.NEXTVAL, m_image_artist_id_seq.NEXTVAL, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getArtist_name());
			pstmt.setString(2, dto.getArtist_e_name());
			pstmt.setString(3, dto.getImage_name());
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
	public List<N_ImageDto> getList(N_ImageDto dto){
		// 이미지 목록을 담을 ArrayList  객체 생성 
		List<N_ImageDto> list=new ArrayList<>();
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT image_id, artist_id, artist_name, artist_e_name, image_name"
					+ " FROM m_image";
			pstmt = conn.prepareStatement(sql);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기 
			while (rs.next()) {
				//select 된 파일의 정보를 FileDto 객체에 담고 
				N_ImageDto tmp=new N_ImageDto();
				tmp.setImage_id(rs.getString("image_id"));
				tmp.setImage_name(rs.getString("image_name"));
				tmp.setArtist_id(rs.getString("artist_id"));
				tmp.setArtist_name(rs.getString("artist_name"));
				tmp.setArtist_e_name(rs.getString("artist_e_name"));
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
