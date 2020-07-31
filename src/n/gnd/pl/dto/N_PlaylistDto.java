package n.gnd.pl.dto;

public class N_PlaylistDto {
	private String playlist_id;
	private String playlist_writer;
	private String playlist_title;
	private String playlist_link;
	private String image_name;
	private String playlist_list1;
	private String playlist_list2;
	private String playlist_list3;
	private String playlist_list4;
	private String playlist_list5;
	
	public N_PlaylistDto() {}

	public N_PlaylistDto(String playlist_id, String playlist_writer, String playlist_title, String playlist_link,
			String image_name, String playlist_list1, String playlist_list2, String playlist_list3,
			String playlist_list4, String playlist_list5) {
		super();
		this.playlist_id = playlist_id;
		this.playlist_writer = playlist_writer;
		this.playlist_title = playlist_title;
		this.playlist_link = playlist_link;
		this.image_name = image_name;
		this.playlist_list1 = playlist_list1;
		this.playlist_list2 = playlist_list2;
		this.playlist_list3 = playlist_list3;
		this.playlist_list4 = playlist_list4;
		this.playlist_list5 = playlist_list5;
	}

	public String getPlaylist_id() {
		return playlist_id;
	}

	public void setPlaylist_id(String playlist_id) {
		this.playlist_id = playlist_id;
	}

	public String getPlaylist_writer() {
		return playlist_writer;
	}

	public void setPlaylist_writer(String playlist_writer) {
		this.playlist_writer = playlist_writer;
	}

	public String getPlaylist_title() {
		return playlist_title;
	}

	public void setPlaylist_title(String playlist_title) {
		this.playlist_title = playlist_title;
	}

	public String getPlaylist_link() {
		return playlist_link;
	}

	public void setPlaylist_link(String playlist_link) {
		this.playlist_link = playlist_link;
	}

	public String getImage_name() {
		return image_name;
	}

	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}

	public String getPlaylist_list1() {
		return playlist_list1;
	}

	public void setPlaylist_list1(String playlist_list1) {
		this.playlist_list1 = playlist_list1;
	}

	public String getPlaylist_list2() {
		return playlist_list2;
	}

	public void setPlaylist_list2(String playlist_list2) {
		this.playlist_list2 = playlist_list2;
	}

	public String getPlaylist_list3() {
		return playlist_list3;
	}

	public void setPlaylist_list3(String playlist_list3) {
		this.playlist_list3 = playlist_list3;
	}

	public String getPlaylist_list4() {
		return playlist_list4;
	}

	public void setPlaylist_list4(String playlist_list4) {
		this.playlist_list4 = playlist_list4;
	}

	public String getPlaylist_list5() {
		return playlist_list5;
	}

	public void setPlaylist_list5(String playlist_list5) {
		this.playlist_list5 = playlist_list5;
	}
		
}