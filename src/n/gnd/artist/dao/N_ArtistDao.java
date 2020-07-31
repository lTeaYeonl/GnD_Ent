package n.gnd.artist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import n.gnd.artist.dto.N_ArtistDto;
import n.gnd.db.DbcpBean;

public class N_ArtistDao {
	private static N_ArtistDao dao;
	private N_ArtistDao() {}
	public static N_ArtistDao getInstance() {
		if(dao==null) {
			dao=new N_ArtistDao();
		}
		return dao;
	}
	// main image 정보를 저장하는 메소드
	public boolean insert(N_ArtistDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "INSERT INTO m_artist"
					+ " (artist_id, artist_name, artist_e_name, image_name, artist_country, artist_description)"
					+ " VALUES(m_artist_seq.NEXTVAL, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getArtist_name());
			pstmt.setString(2, dto.getArtist_e_name());
			pstmt.setString(3, dto.getImage_name());
			pstmt.setString(4, dto.getArtist_country());
			pstmt.setString(5, dto.getArtist_description());
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
	public List<N_ArtistDto> getList(N_ArtistDto dto){
		// 이미지 목록을 담을 ArrayList  객체 생성 
		List<N_ArtistDto> list=new ArrayList<>();
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT artist_id, artist_name, artist_e_name, image_name, artist_country, artist_description"
					+ " FROM m_artist";
			pstmt = conn.prepareStatement(sql);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기 
			while (rs.next()) {
				//select 된 파일의 정보를 FileDto 객체에 담고 
				N_ArtistDto tmp=new N_ArtistDto();
				tmp.setArtist_id(rs.getString("artist_id"));
				tmp.setArtist_name(rs.getString("artist_name"));
				tmp.setArtist_e_name(rs.getString("artist_e_name"));
				tmp.setImage_name(rs.getString("image_name"));
				tmp.setArtist_country(rs.getString("artist_country"));
				tmp.setArtist_description(rs.getString("artist_description"));
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
	//글하나의 정보를 리턴하는 메소드
	public N_ArtistDto getData(int num) {
		N_ArtistDto dto=null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT *"
					+ " FROM m_artist"
					+ " WHERE num=?";
			pstmt = conn.prepareStatement(sql);
			// ? 에 값 바인딩 
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto=new N_ArtistDto();
				dto.setArtist_id(rs.getString(num));
				dto.setArtist_name(rs.getString("artist_name"));
				dto.setArtist_e_name(rs.getString("artist_e_name"));
				dto.setArtist_name(rs.getString("image_name"));
				dto.setArtist_country(rs.getString("artist_country"));
				dto.setArtist_description(rs.getString("artist_description"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				//connection pool 에 반납하기 
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return dto;
	}
}