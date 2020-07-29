package gnd.image.dto;

public class ImageDto {
	private String id; // image id 값
	private String name; // image name (경로역할)
	
	public ImageDto() {}

	public ImageDto(String id, String name) {
		super();
		this.id = id;
		this.name = name;
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
