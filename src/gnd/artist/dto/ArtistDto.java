package gnd.artist.dto;

public class ArtistDto {
	private String id;
	private String e_name;
	private String k_name;
	private String r_name;
	private String main_img;
	private String art_img;
	private String s_msg;
	private String l_msg;
	private String at_d_day;
	private String country;
	private String at_y_link;
	private String f_link;
	private String i_link;
	private String t_link;
	private String y_link;
	private String official_site;
	
	public ArtistDto() {}

	// 생성자 자동추가 
	public ArtistDto(String id, String e_name, String k_name, String r_name, String main_img, String art_img,
			String s_msg, String l_msg, String at_d_day, String country, String at_y_link, String f_link, String i_link,
			String t_link, String y_link, String official_site) {
		super();
		this.id = id;
		this.e_name = e_name;
		this.k_name = k_name;
		this.r_name = r_name;
		this.main_img = main_img;
		this.art_img = art_img;
		this.s_msg = s_msg;
		this.l_msg = l_msg;
		this.at_d_day = at_d_day;
		this.country = country;
		this.at_y_link = at_y_link;
		this.f_link = f_link;
		this.i_link = i_link;
		this.t_link = t_link;
		this.y_link = y_link;
		this.official_site = official_site;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getK_name() {
		return k_name;
	}

	public void setK_name(String k_name) {
		this.k_name = k_name;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public String getMain_img() {
		return main_img;
	}

	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}

	public String getArt_img() {
		return art_img;
	}

	public void setArt_img(String art_img) {
		this.art_img = art_img;
	}

	public String getS_msg() {
		return s_msg;
	}

	public void setS_msg(String s_msg) {
		this.s_msg = s_msg;
	}

	public String getL_msg() {
		return l_msg;
	}

	public void setL_msg(String l_msg) {
		this.l_msg = l_msg;
	}

	public String getAt_d_day() {
		return at_d_day;
	}

	public void setAt_d_day(String at_d_day) {
		this.at_d_day = at_d_day;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAt_y_link() {
		return at_y_link;
	}

	public void setAt_y_link(String at_y_link) {
		this.at_y_link = at_y_link;
	}

	public String getF_link() {
		return f_link;
	}

	public void setF_link(String f_link) {
		this.f_link = f_link;
	}

	public String getI_link() {
		return i_link;
	}

	public void setI_link(String i_link) {
		this.i_link = i_link;
	}

	public String getT_link() {
		return t_link;
	}

	public void setT_link(String t_link) {
		this.t_link = t_link;
	}

	public String getY_link() {
		return y_link;
	}

	public void setY_link(String y_link) {
		this.y_link = y_link;
	}

	public String getOfficial_site() {
		return official_site;
	}

	public void setOfficial_site(String official_site) {
		this.official_site = official_site;
	}
}
