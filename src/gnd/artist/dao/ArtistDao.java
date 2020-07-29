package gnd.artist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import gnd.artist.dto.ArtistDto;
import gnd.db.DbcpBean;

public class ArtistDao {
	private static ArtistDao dao;
	private ArtistDao() {}
	public static ArtistDao getinstance() {
		if(dao==null) {
			dao=new ArtistDao();
		}
		return dao;
	}
	// Artist 정보를 저장하는 메소드
	public boolean insert(ArtistDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "INSERT INTO artist"
					+ " (at_id,at_e_name,at_k_name,at_r_name,main_img,art_img,s_msg,l_msg,at_d_day,country,at_y_link,fb_link,insta_link,twitter_link,youtube_link,official_site)"
					+ " VALUES(artist_seq.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getE_name());
			pstmt.setString(2, dto.getK_name());
			pstmt.setString(3, dto.getR_name());
			pstmt.setString(4, dto.getMain_img());
			pstmt.setString(5, dto.getArt_img());
			pstmt.setString(6, dto.getS_msg());
			pstmt.setString(7, dto.getL_msg());
			pstmt.setString(8, dto.getAt_d_day());
			pstmt.setString(9, dto.getCountry());
			pstmt.setString(10, dto.getAt_y_link());
			pstmt.setString(11, dto.getF_link());
			pstmt.setString(12, dto.getI_link());
			pstmt.setString(13, dto.getT_link());
			pstmt.setString(14, dto.getY_link());
			pstmt.setString(15, dto.getOfficial_site());
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
