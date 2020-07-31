package gnd.artistinfo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import gnd.artist.dto.ArtistDto;
import gnd.db.DbcpBean;
import gnd.image.dto.ImageDto;

	public class ArtistInfoDao {
		private static ArtistInfoDao dao;
		private ArtistInfoDao() {}
		public static ArtistInfoDao getinstance() {
			if(dao==null) {
				dao=new ArtistInfoDao();
			}
			return dao;
		}
		
		// Artist 정보를 가져오는 메소드
		public List<ArtistDto> getList(ArtistDto dto) {
			List<ArtistDto> list=new ArrayList<>();
			//필요한 객체의 참조값을 담을 지역변수 만들기 
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				//Connection 객체의 참조값 얻어오기 
				conn = new DbcpBean().getConn();
				//실행할 sql 문 준비하기
				String sql = "SELECT at_id, at_e_name"
						+ " FROM artist";
				pstmt = conn.prepareStatement(sql);
				//select 문 수행하고 결과 받아오기 
				rs = pstmt.executeQuery();
				//반복문 돌면서 결과 값 추출하기 
				while (rs.next()) {
					ArtistDto tmp=new ArtistDto();
					tmp.setId(rs.getString("at_id"));
					tmp.setE_name(rs.getString("at_e_name"));
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
