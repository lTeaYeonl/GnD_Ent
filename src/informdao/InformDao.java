package informdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import gnd.db.DbcpBean;
import informdto.InformDto;

public class InformDao {
	private static InformDao dao;
	private InformDao() {}
	public static InformDao getInstance() {
		if(dao==null) {
			dao=new InformDao();
		}
		return dao;
	}
	//인자로 전달된 아이디가 inform 테이블에 존재하는지 여부를 리턴하는 메소드
	public boolean isExist(String inputId) {
		
		boolean isExist=false;
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT inf_email"
					+ " FROM inform"
					+ " WHERE inf_email=?";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setString(1, inputId);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//select 된 row 가 있는지 확인한다. 
			if (rs.next()) {
				isExist=true;//해당 아이디가 이미 존재 하는 경우 
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
		return isExist; //아이디 존재 여부를 리턴한다. 
	}

	//InformDto 객체에 있는 id, pwd 가 유효한 정보인지 여부를 리턴하는 메소드
	public boolean isValid(InformDto dto) {
		//유효한 정보인지 여부를 담을 지역변수 만들고 초기값 false 부여하기
		boolean isValid=false;
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT inf_email"
					+ " FROM inform"
					+ " WHERE inf_email=? AND inf_pwd=?";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setString(1, dto.getInf_email());
			pstmt.setString(2, dto.getInf_pwd());
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기 
			while (rs.next()) {
				//select 된 결과가 있으면 유효한 정보 이므로 isValid 에 true 를 넣어준다.
				isValid=true;
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
		//아이디 비밀번호가 유효한 정보인지 여부를 리턴해준다.
		return isValid;
	}
	
	//회원정보를 저장하는 메소드 
	public boolean insert(InformDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "INSERT INTO inform"
					+ " (inf_name, inf_email, inf_pwd, inf_nt, inf_sel, inf_sex, inf_bday, inf_height, inf_weight, inf_phone, inf_job, inf_sns, inf_address, inf_lan, inf_hobby, inf_spec, inf_intro)"
					+ " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getInf_name());
			pstmt.setString(2, dto.getInf_email());
			pstmt.setString(3, dto.getInf_pwd());
			pstmt.setString(4, dto.getInf_nt());
			pstmt.setString(5, dto.getInf_sel());
			pstmt.setString(6, dto.getInf_sex());
			pstmt.setString(7, dto.getInf_bday());
			pstmt.setInt(8, dto.getInf_height());
			pstmt.setInt(9, dto.getInf_weight());
			pstmt.setString(10, dto.getInf_phone());
			pstmt.setString(11, dto.getInf_job());
			pstmt.setString(12, dto.getInf_sns());
			pstmt.setString(13, dto.getInf_address());
			pstmt.setString(14, dto.getInf_lan());
			pstmt.setString(15, dto.getInf_hobby());
			pstmt.setString(16, dto.getInf_spec());
			pstmt.setString(17, dto.getInf_intro());
			
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