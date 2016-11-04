package cafe.action;

import com.opensymphony.xwork2.ActionSupport;

import cafe.dao.ContactUsDAO;

public class ContactUsAction extends ActionSupport{

	private String contactName;
	private String contactMail;
	private String contactContent;
	private String val;
	private String comment="送信失敗しました";

	public String execute(){
		String result=ERROR;
		ContactUsDAO dao=new ContactUsDAO();
		int count=dao.insert(contactName,contactMail,contactContent,val);
		if(count>0){
			comment="送信しました";
			result=SUCCESS;
		}
		return result;
	}

	public String getVal() {
		return val;
	}

	public void setVal(String val) {
		this.val = val;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
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



}
