package n.gnd.oc.dto;

public class N_OfficialCDto {
	private String officialchannel_id;
	private String officialchannel_link;
	private String officialchannel_icon_name;
	
	public N_OfficialCDto() {}

	public N_OfficialCDto(String officialchannel_id, String officialchannel_link, String officialchannel_icon_name) {
		super();
		this.officialchannel_id = officialchannel_id;
		this.officialchannel_link = officialchannel_link;
		this.officialchannel_icon_name = officialchannel_icon_name;
	}

	public String getOfficialchannel_id() {
		return officialchannel_id;
	}

	public void setOfficialchannel_id(String officialchannel_id) {
		this.officialchannel_id = officialchannel_id;
	}

	public String getOfficialchannel_link() {
		return officialchannel_link;
	}

	public void setOfficialchannel_link(String officialchannel_link) {
		this.officialchannel_link = officialchannel_link;
	}

	public String getOfficialchannel_icon_name() {
		return officialchannel_icon_name;
	}

	public void setOfficialchannel_icon_name(String officialchannel_icon_name) {
		this.officialchannel_icon_name = officialchannel_icon_name;
	}
		
}
