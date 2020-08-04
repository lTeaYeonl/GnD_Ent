package n.gnd.newsletter.dto;

public class N_NewsLetterDto {
	private String email_id;
	
	//디폴트 생성자
	public N_NewsLetterDto() {}

	public N_NewsLetterDto(String email_id) {
		super();
		this.email_id = email_id;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	
}
