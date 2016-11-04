package cafe.dto;

public class AdminUserContactUsDTO {

	private int contactId;
	private String contactName;
	private String contactMail;
	private String contactContent;
	private String val;
    private String contactDate;
    private int primarity;


	public int getPrimarity() {
		return primarity;
	}
	public void setPrimarity(int primarity) {
		this.primarity = primarity;
	}
	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getContactMail() {
		return contactMail;
	}
	public void setContactMail(String contactMail) {
		this.contactMail = contactMail;
	}
	public String getContactContent() {
		return contactContent;
	}
	public void setContactContent(String contactContent) {
		this.contactContent = contactContent;
	}
	public String getVal() {
		return val;
	}
	public void setVal(String val) {
		this.val = val;
	}
	public String getContactDate() {
		return contactDate;
	}
	public void setContactDate(String contactDate) {
		this.contactDate = contactDate;
	}


}
