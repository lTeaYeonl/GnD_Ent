package gnd.mv.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import gnd.db.DbcpBean;
import gnd.image.dto.ImageDto;
import gnd.mv.dto.MvDto;

public class MvDao {
   private static MvDao dao;
   private MvDao() {}
   public static MvDao getinstance() {
      if(dao==null) {
         dao=new MvDao();
      }
      return dao;
   }
   // MusicVideo 정보를 저장하는 메소드
   public boolean insert(MvDto dto) {
      Connection conn = null;
      PreparedStatement pstmt = null;
      int flag = 0;
      try {
         conn = new DbcpBean().getConn();
         //실행할 sql 문 준비하기 
         String sql = "INSERT INTO n_mv"
               + " (mv_id, mv_link, at_id)"
               + " VALUES(n_mv_seq.NEXTVAL, ?, ?,)";
         pstmt = conn.prepareStatement(sql);
         //? 에 바인딩 할 값이 있으면 바인딩한다.
         pstmt.setString(1, dto.getLink());
         pstmt.setString(2, dto.getAt_id());
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
   // 뮤직비디오 정보를 리턴하는 메소드
   public List<MvDto> getList(MvDto dto) {
      List<MvDto> list=new ArrayList<>();
      //필요한 객체의 참조값을 담을 지역변수 만들기 
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      try {
         //Connection 객체의 참조값 얻어오기 
         conn = new DbcpBean().getConn();
         //실행할 sql 문 준비하기
         String sql = "SELECT n_mv.mv_link, n_mv.at_id, image.img_name"
               + " FROM n_mv, image"
               + " WHERE image.page_id=3" 
               + " AND image.at_id=artist.at_id";
         pstmt = conn.prepareStatement(sql);
         //select 문 수행하고 결과 받아오기 
         rs = pstmt.executeQuery();
         //반복문 돌면서 결과 값 추출하기 
         while (rs.next()) {
            MvDto tmp=new MvDto();
            tmp.setLink(rs.getString("mv_link"));
            tmp.setAt_id(rs.getString("at_id"));
            tmp.setImg_name(rs.getString("img_name"));
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