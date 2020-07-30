package gnd.mv.dto;

public class MvDto {
   private String id; // mv id 값
   private String link; // mv link (경로역할)
   private String at_id; // artist id 값
   private String img_name; // image name 값
   
   public MvDto() {}

   public MvDto(String id, String link, String at_id, String img_name) {
      super();
      this.id = id;
      this.link = link;
      this.at_id = at_id;
      this.img_name = img_name;
   }

   public String getId() {
      return id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public String getLink() {
      return link;
   }

   public void setLink(String link) {
      this.link = link;
   }

   public String getAt_id() {
      return at_id;
   }

   public void setAt_id(String at_id) {
      this.at_id = at_id;
   }

   public String getImg_name() {
      return img_name;
   }

   public void setImg_name(String img_name) {
      this.img_name = img_name;
   }
}