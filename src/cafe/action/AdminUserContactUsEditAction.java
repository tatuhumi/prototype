package cafe.action;

import com.opensymphony.xwork2.ActionSupport;

import cafe.dao.AdminUserContactUsEditDAO;

public class AdminUserContactUsEditAction extends ActionSupport{

	private int contactId;
	private String contactval;
	private String contactName;
	private String contactMail;
	private String contactDate;
	private String contactContent;

	public String execute(){
		String result=ERROR;
		AdminUserContactUsEditDAO dao=new AdminUserContactUsEditDAO();
		int count=dao.update(contactId,contactval,contactName,contactMail,contactDate,contactContent);
		if(count>0){
			result=SUCCESS;
		}
		return result;
	}

	public String getContactContent() {
		return contactContent;
	}

	public void setContactContent(String contactContent) {
		this.contactContent = contactContent;
	}

	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public String getContactval() {
		return contactval;
	}
	public void setContactval(String contactval) {
		this.contactval = contactval;
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
	public String getContactDate() {
		return contactDate;
	}
	public void setContactDate(String contactDate) {
		this.contactDate = contactDate;
	}

}
