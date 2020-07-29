package gnd.image.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
					+ " (img_id, img_name)"
					+ " VALUES(image_seq.NEXTVAL, ?)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getName());
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
