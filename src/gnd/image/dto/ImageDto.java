package gnd.image.dto;

public class ImageDto {
	private String id; // image id 값
	private String name; // image name (경로역할)
	private String at_id; // artist id 값
	private String page_id; // page id 값
	
	public ImageDto() {}
	
	public ImageDto(String id, String name, String at_id, String page_id) {
		super();
		this.id = id;
		this.name = name;
		this.at_id = at_id;
		this.page_id = page_id;
	}

	public String getAt_id() {
		return at_id;
	}

	public void setAt_id(String at_id) {
		this.at_id = at_id;
	}

	public String getPage_id() {
		return page_id;
	}

	public void setPage_id(String page_id) {
		this.page_id = page_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
