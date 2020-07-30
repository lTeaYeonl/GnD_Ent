package informdto;

public class InformDto {
	private String inf_name;
	private String inf_email;
	private String inf_pwd;
	private String inf_nt;
	private String inf_sel;
	private String inf_sex;
	private String inf_bday;
	private int inf_height;
	private int inf_weight;
	private String inf_phone;
	private String inf_job;
	private String inf_sns;
	private String inf_address;
	private String inf_lan;
	private String inf_hobby;
	private String inf_spec;
	private String inf_intro;
	
	//디폴트 생성자
	public InformDto() {}

	public InformDto(String inf_name, String inf_email, String inf_pwd, String inf_nt, String inf_sel, String inf_sex,
			String inf_bday, int inf_height, int inf_weight, String inf_phone, String inf_job, String inf_sns,
			String inf_address, String inf_lan, String inf_hobby, String inf_spec, String inf_intro) {
		super();
		this.inf_name = inf_name;
		this.inf_email = inf_email;
		this.inf_pwd = inf_pwd;
		this.inf_nt = inf_nt;
		this.inf_sel = inf_sel;
		this.inf_sex = inf_sex;
		this.inf_bday = inf_bday;
		this.inf_height = inf_height;
		this.inf_weight = inf_weight;
		this.inf_phone = inf_phone;
		this.inf_job = inf_job;
		this.inf_sns = inf_sns;
		this.inf_address = inf_address;
		this.inf_lan = inf_lan;
		this.inf_hobby = inf_hobby;
		this.inf_spec = inf_spec;
		this.inf_intro = inf_intro;
	}
	
	public String getInf_name() {
		return inf_name;
	}

	public void setInf_name(String inf_name) {
		this.inf_name = inf_name;
	}

	public String getInf_email() {
		return inf_email;
	}

	public void setInf_email(String inf_email) {
		this.inf_email = inf_email;
	}

	public String getInf_pwd() {
		return inf_pwd;
	}

	public void setInf_pwd(String inf_pwd) {
		this.inf_pwd = inf_pwd;
	}

	public String getInf_nt() {
		return inf_nt;
	}

	public void setInf_nt(String inf_nt) {
		this.inf_nt = inf_nt;
	}

	public String getInf_sel() {
		return inf_sel;
	}

	public void setInf_sel(String inf_sel) {
		this.inf_sel = inf_sel;
	}

	public String getInf_sex() {
		return inf_sex;
	}

	public void setInf_sex(String inf_sex) {
		this.inf_sex = inf_sex;
	}

	public String getInf_bday() {
		return inf_bday;
	}

	public void setInf_bday(String inf_bday) {
		this.inf_bday = inf_bday;
	}

	public int getInf_height() {
		return inf_height;
	}

	public void setInf_height(int inf_height) {
		this.inf_height = inf_height;
	}

	public int getInf_weight() {
		return inf_weight;
	}

	public void setInf_weight(int inf_weight) {
		this.inf_weight = inf_weight;
	}

	public String getInf_phone() {
		return inf_phone;
	}

	public void setInf_phone(String inf_phone) {
		this.inf_phone = inf_phone;
	}

	public String getInf_job() {
		return inf_job;
	}

	public void setInf_job(String inf_job) {
		this.inf_job = inf_job;
	}

	public String getInf_sns() {
		return inf_sns;
	}

	public void setInf_sns(String inf_sns) {
		this.inf_sns = inf_sns;
	}

	public String getInf_address() {
		return inf_address;
	}

	public void setInf_address(String inf_address) {
		this.inf_address = inf_address;
	}

	public String getInf_lan() {
		return inf_lan;
	}

	public void setInf_lan(String inf_lan) {
		this.inf_lan = inf_lan;
	}

	public String getInf_hobby() {
		return inf_hobby;
	}

	public void setInf_hobby(String inf_hobby) {
		this.inf_hobby = inf_hobby;
	}

	public String getInf_spec() {
		return inf_spec;
	}

	public void setInf_spec(String inf_spec) {
		this.inf_spec = inf_spec;
	}

	public String getInf_intro() {
		return inf_intro;
	}

	public void setInf_intro(String inf_intro) {
		this.inf_intro = inf_intro;
	}
	
}