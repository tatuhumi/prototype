package cafe.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import cafe.dao.LoginDAO;

public class LoginAction extends ActionSupport implements SessionAware{

	private String name;
	private String password;
	private Map<String, Object> session;

	public String execute(){
		String result=ERROR;
		LoginDAO dao=new LoginDAO();
		int count=dao.insert(name,password);
		session.put("name",name);
		session.put("password",password);
		if(count>0){
			result=SUCCESS;
		}
		return result;
	}


	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
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
