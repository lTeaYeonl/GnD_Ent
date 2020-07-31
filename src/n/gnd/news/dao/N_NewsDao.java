package n.gnd.news.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import n.gnd.artist.dto.N_ArtistDto;
import n.gnd.db.DbcpBean;
import n.gnd.news.dto.N_NewsDto;

public class N_NewsDao {
	private static N_NewsDao dao;
	private N_NewsDao() {}
	public static N_NewsDao getInstance() {
		if(dao==null) {
			dao=new N_NewsDao();
		}
		return dao;
	}
	// main image 정보를 저장하는 메소드
	public boolean insert(N_NewsDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "INSERT INTO m_news"
					+ " (news_id, artist_id, artist_name, artist_e_name, news_writer, news_title, news_content, news_regdate, image_name)"
					+ " VALUES(m_news_seq.NEXTVAL, ?, ?, ?, ?, ?, ?, SYSDATE, ?)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getArtist_id());
			pstmt.setString(2, dto.getArtist_name());
			pstmt.setString(3, dto.getArtist_e_name());
			pstmt.setString(4, dto.getNews_writer());
			pstmt.setString(5, dto.getNews_title());
			pstmt.setString(6, dto.getNews_content());
			pstmt.setString(7, dto.getImage_name());
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
	public List<N_NewsDto> getList(N_NewsDto dto){
		// 이미지 목록을 담을 ArrayList  객체 생성 
		List<N_NewsDto> list=new ArrayList<>();
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT news_id, artist_id, artist_name, artist_e_name, news_writer, news_title, news_content, news_regdate, image_name"
					+ " FROM m_news";
			pstmt = conn.prepareStatement(sql);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기 
			while (rs.next()) {
				//select 된 파일의 정보를 FileDto 객체에 담고 
				N_NewsDto tmp=new N_NewsDto();
				tmp.setNews_id(rs.getString("news_id"));
				tmp.setArtist_id(rs.getString("artist_id"));
				tmp.setArtist_name(rs.getString("artist_name"));
				tmp.setArtist_e_name(rs.getString("artist_e_name"));
				tmp.setNews_writer(rs.getString("news_writer"));
				tmp.setNews_title(rs.getString("news_title"));
				tmp.setNews_content(rs.getString("news_content"));
				tmp.setNews_regdate(rs.getString("news_regdate"));
				tmp.setImage_name(rs.getString("image_name"));
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
	// 뉴스 하나의 정보를 리턴하는 메소드
	public N_NewsDto getData(int num) {
		N_NewsDto dto=null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT *"
					+ " FROM m_news"
					+ " WHERE news_id=?";
			pstmt = conn.prepareStatement(sql);
			// ? 에 값 바인딩 
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto=new N_NewsDto();
				dto.setNews_id(rs.getString(num));
				dto.setArtist_id(rs.getString("artist_name"));
				dto.setArtist_name(rs.getString("artist_name"));
				dto.setArtist_e_name(rs.getString("artist_e_name"));
				dto.setNews_writer(rs.getString("news_writer"));
				dto.setNews_title(rs.getString("news_title"));
				dto.setNews_content(rs.getString("news_content"));
				dto.setNews_regdate(rs.getString("news_regdate"));
				dto.setImage_name(rs.getString("image_name"));
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