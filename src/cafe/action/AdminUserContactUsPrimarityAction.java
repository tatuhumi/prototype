package cafe.action;

import com.opensymphony.xwork2.ActionSupport;

import cafe.dao.AdminUserContactUsPrimarityDAO;

public class AdminUserContactUsPrimarityAction extends ActionSupport{

	private int primarity;
	private int contactId;

	public String execute(){
		String result=ERROR;
		AdminUserContactUsPrimarityDAO dao=new AdminUserContactUsPrimarityDAO();
		int count=dao.update(contactId,primarity);
		if(count>0){
			result=SUCCESS;
		}
		return result;

	}

	public int getContactId() {
		return contactId;
	}

	public void setContactId(int contactId) {
		this.contactId = contactId;
	}



	public int getPrimarity() {
		return primarity;
	}

	public void setPrimarity(int primarity) {
		this.primarity = primarity;
	}

}
