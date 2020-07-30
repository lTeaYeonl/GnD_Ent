package n.gnd.artist.dto;

public class N_ArtistDto {
	private String artist_id;
	private String artist_name;
	private String artist_e_name;
	private String image_name;
	private String artist_country;
	private String artist_description;
	
	public N_ArtistDto() {}

	public N_ArtistDto(String artist_id, String artist_name, String artist_e_name, String image_name,
			String artist_country, String artist_description) {
		super();
		this.artist_id = artist_id;
		this.artist_name = artist_name;
		this.artist_e_name = artist_e_name;
		this.image_name = image_name;
		this.artist_country = artist_country;
		this.artist_description = artist_description;
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

	public String getArtist_country() {
		return artist_country;
	}

	public void setArtist_country(String artist_country) {
		this.artist_country = artist_country;
	}

	public String getArtist_description() {
		return artist_description;
	}

	public void setArtist_description(String artist_description) {
		this.artist_description = artist_description;
	}
}