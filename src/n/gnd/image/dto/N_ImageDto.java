package n.gnd.image.dto;

public class N_ImageDto {
	private String image_id;
	private String artist_id;
	private String artist_name;
	private String artist_e_name;
	private String image_name;
	
	public N_ImageDto() {}

	public N_ImageDto(String image_id, String artist_id, String artist_name, String artist_e_name, String image_name) {
		super();
		this.image_id = image_id;
		this.artist_id = artist_id;
		this.artist_name = artist_name;
		this.artist_e_name = artist_e_name;
		this.image_name = image_name;
	}

	public String getImage_id() {
		return image_id;
	}

	public void setImage_id(String image_id) {
		this.image_id = image_id;
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

	public String getImage_name() {
		return image_name;
	}

	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}

}
