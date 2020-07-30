package n.gnd.news.dto;

public class N_NewsDto {
	private String news_id;
	private String artist_id;
	private String artist_name;
	private String artist_e_name;
	private String news_writer;
	private String news_title;
	private String news_content;
	private String news_regdate;
	private String image_name;
	
	public N_NewsDto() {}

	public N_NewsDto(String news_id, String artist_id, String artist_name, String artist_e_name, String news_writer,
			String news_title, String news_content, String news_regdate, String image_name) {
		super();
		this.news_id = news_id;
		this.artist_id = artist_id;
		this.artist_name = artist_name;
		this.artist_e_name = artist_e_name;
		this.news_writer = news_writer;
		this.news_title = news_title;
		this.news_content = news_content;
		this.news_regdate = news_regdate;
		this.image_name = image_name;
	}

	public String getNews_id() {
		return news_id;
	}

	public void setNews_id(String news_id) {
		this.news_id = news_id;
	}

	public String getArtist_id() {
		return artist_id;
	}

	public void setArtist_id(String artist_id) {
		this.artist_id = artist_id;
	}

	public String getArtist_name() {
		return artist_name;
	}

	public void setArtist_name(String artist_name) {
		this.artist_name = artist_name;
	}

	public String getArtist_e_name() {
		return artist_e_name;
	}

	public void setArtist_e_name(String artist_e_name) {
		this.artist_e_name = artist_e_name;
	}

	public String getNews_writer() {
		return news_writer;
	}

	public void setNews_writer(String news_writer) {
		this.news_writer = news_writer;
	}

	public String getNews_title() {
		return news_title;
	}

	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}

	public String getNews_content() {
		return news_content;
	}

	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}

	public String getNews_regdate() {
		return news_regdate;
	}

	public void setNews_regdate(String news_regdate) {
		this.news_regdate = news_regdate;
	}

	public String getImage_name() {
		return image_name;
	}

	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}
	
}
