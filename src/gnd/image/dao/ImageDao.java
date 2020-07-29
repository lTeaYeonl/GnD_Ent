package gnd.image.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import gnd.db.DbcpBean;
import gnd.image.dto.ImageDto;

public class ImageDao {
	private static ImageDao dao;
	private ImageDao() {}
	public static ImageDao getinstance() {
		if(dao==null) {
			dao=new ImageDao();
		}
		return dao;
	}
	// image 정보를 저장하는 메소드
	public boolean insert(ImageDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "INSERT INTO image"
					+ " (img_id, img_name, at_id, page_id)"
					+ " VALUES(image_seq.NEXTVAL, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAt_id());
			pstmt.setString(3, dto.getPage_id());
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
	// 모든 아티스트 별 메인 이미지 목록을 리턴하는 메소드
	public List<ImageDto> getList(ImageDto dto) {
		List<ImageDto> list=new ArrayList<>();
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT image.img_name, artist.at_e_name, artist.at_k_name"
					+ " FROM image, artist"
					+ " WHERE image.page_id=1 AND image.at_id=artist.at_id";
			pstmt = conn.prepareStatement(sql);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기 
			while (rs.next()) {
				ImageDto tmp=new ImageDto();
				tmp.setName(rs.getString("img_name"));
				tmp.setE_name(rs.getString("at_e_name"));
				tmp.setK_name(rs.getString("at_k_name"));
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
