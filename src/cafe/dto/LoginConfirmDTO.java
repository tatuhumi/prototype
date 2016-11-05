package cafe.dto;

public class LoginConfirmDTO {

	private String name;
	private String password;
	private int userFlg;

	public int getUserFlg() {
		return userFlg;
	}
	public void setUserFlg(int userFlg) {
		this.userFlg = userFlg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


}
