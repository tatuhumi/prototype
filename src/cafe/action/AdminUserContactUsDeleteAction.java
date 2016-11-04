package cafe.action;

import com.opensymphony.xwork2.ActionSupport;

import cafe.dao.AdminUserContactUsDeleteDAO;

public class AdminUserContactUsDeleteAction extends ActionSupport{

	private int contactId;

	public String execute(){
		String result=ERROR;
		AdminUserContactUsDeleteDAO dao=new AdminUserContactUsDeleteDAO();
		int count=dao.delete(contactId);
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
}
