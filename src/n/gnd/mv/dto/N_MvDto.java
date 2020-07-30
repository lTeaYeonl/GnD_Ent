package n.gnd.mv.dto;

public class N_MvDto {
	private String musicvideo_id;
	private String artist_id;
	private String artist_e_name;
	private String musicvideo_name;
	private String musicvideo_link;
	private String musicvideo_thumbnail_name;

	public N_MvDto() {}
	
	public N_MvDto(String musicvideo_id, String artist_id, String artist_e_name, String musicvideo_name,
			String musicvideo_link, String musicvideo_thumbnail_name) {
		super();
		this.musicvideo_id = musicvideo_id;
		this.artist_id = artist_id;
		this.artist_e_name = artist_e_name;
		this.musicvideo_name = musicvideo_name;
		this.musicvideo_link = musicvideo_link;
		this.musicvideo_thumbnail_name = musicvideo_thumbnail_name;
	}

	public String getMusicvideo_id() {
		return musicvideo_id;
	}

	public void setMusicvideo_id(String musicvideo_id) {
		this.musicvideo_id = musicvideo_id;
	}

	public String getArtist_id() {
		return artist_id;
	}

	public void setArtist_id(String artist_id) {
		this.artist_id = artist_id;
	}

	public String getArtist_e_name() {
		return artist_e_name;
	}

	public void setArtist_e_name(String artist_e_name) {
		this.artist_e_name = artist_e_name;
	}

	public String getMusicvideo_name() {
		return musicvideo_name;
	}

	public void setMusicvideo_name(String musicvideo_name) {
		this.musicvideo_name = musicvideo_name;
	}

	public String getMusicvideo_link() {
		return musicvideo_link;
	}

	public void setMusicvideo_link(String musicvideo_link) {
		this.musicvideo_link = musicvideo_link;
	}

	public String getMusicvideo_thumbnail_name() {
		return musicvideo_thumbnail_name;
	}

	public void setMusicvideo_thumbnail_name(String musicvideo_thumbnail_name) {
		this.musicvideo_thumbnail_name = musicvideo_thumbnail_name;
	}
	
}
