package n.gnd.pl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import n.gnd.db.DbcpBean;
import n.gnd.news.dto.N_NewsDto;
import n.gnd.pl.dto.N_PlaylistDto;

public class N_PlaylistDao {
	private static N_PlaylistDao dao;
	private N_PlaylistDao() {}
	public static N_PlaylistDao getInstance() {
		if(dao==null) {
			dao=new N_PlaylistDao();
		}
		return dao;
	}
	// main image 정보를 저장하는 메소드
	public boolean insert(N_PlaylistDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "INSERT INTO m_playlist"
					+ " (playlist_id, playlist_writer, playlist_title, playlist_link, image_name, playlist_list1, playlist_list2, playlist_list3, playlist_list4, playlist_list5)"
					+ " VALUES(m_playlist_seq.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getPlaylist_writer());
			pstmt.setString(2, dto.getPlaylist_title());
			pstmt.setString(3, dto.getPlaylist_link());
			pstmt.setString(4, dto.getImage_name());
			pstmt.setString(5, dto.getPlaylist_list1());
			pstmt.setString(6, dto.getPlaylist_list2());
			pstmt.setString(7, dto.getPlaylist_list3());
			pstmt.setString(8, dto.getPlaylist_list4());
			pstmt.setString(9, dto.getPlaylist_list5());
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
	public List<N_PlaylistDto> getList(N_PlaylistDto dto){
		// 이미지 목록을 담을 ArrayList  객체 생성 
		List<N_PlaylistDto> list=new ArrayList<>();
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT playlist_id, playlist_writer, playlist_title, playlist_link, image_name, playlist_list1, playlist_list2, playlist_list3, playlist_list4, playlist_list5"
					+ " FROM m_playlist";
			pstmt = conn.prepareStatement(sql);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기 
			while (rs.next()) {
				//select 된 파일의 정보를 FileDto 객체에 담고 
				N_PlaylistDto tmp=new N_PlaylistDto();
				tmp.setPlaylist_id(rs.getString("playlist_id"));
				tmp.setPlaylist_writer(rs.getString("playlist_writer"));
				tmp.setPlaylist_title(rs.getString("playlist_title"));
				tmp.setPlaylist_link(rs.getString("playlist_link"));
				tmp.setImage_name(rs.getString("image_name"));
				tmp.setPlaylist_list1(rs.getString("playlist_list1"));
				tmp.setPlaylist_list2(rs.getString("playlist_list2"));
				tmp.setPlaylist_list3(rs.getString("playlist_list3"));
				tmp.setPlaylist_list4(rs.getString("playlist_list4"));
				tmp.setPlaylist_list5(rs.getString("playlist_list5"));
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
	// 플레이리스트 하나의 정보를 리턴하는 메소드
	public N_PlaylistDto getData(int num) {
		N_PlaylistDto dto=null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT *"
					+ " FROM m_playlist"
					+ " WHERE playlist_id=?";
			pstmt = conn.prepareStatement(sql);
			// ? 에 값 바인딩 
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto=new N_PlaylistDto();
				dto.setPlaylist_id(rs.getString(num));
				dto.setPlaylist_writer(rs.getString("playlist_writer"));
				dto.setPlaylist_title(rs.getString("playlist_title"));
				dto.setPlaylist_link(rs.getString("playlist_link"));
				dto.setImage_name(rs.getString("image_name"));
				dto.setPlaylist_list1(rs.getString("playlist_list1"));
				dto.setPlaylist_list2(rs.getString("playlist_list2"));
				dto.setPlaylist_list3(rs.getString("playlist_list3"));
				dto.setPlaylist_list4(rs.getString("playlist_list4"));
				dto.setPlaylist_list5(rs.getString("playlist_list5"));
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