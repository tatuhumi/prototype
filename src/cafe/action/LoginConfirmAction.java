package cafe.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import cafe.dao.LoginConfirmDAO;
import cafe.dto.LoginConfirmDTO;

public class LoginConfirmAction extends ActionSupport implements SessionAware{

	private String name;
	private String password;
	private int userFlg;
	private List<LoginConfirmDTO> selectList;
	private Map<String, Object> session;


	public String execute(){
		String result=ERROR;
		LoginConfirmDAO dao=new LoginConfirmDAO();
		selectList=dao.select();
		for(int i=0;i<selectList.size();i++){
			if(selectList.get(i).getName().equals(name)&&selectList.get(i).getPassword().equals(password)){
				System.out.println(selectList.get(i).getName().equals(name));
				System.out.println(selectList.get(i).getPassword().equals(password));
				session.put("name",name);
				session.put("password",password);
				session.put("userFlg",selectList.get(i).getUserFlg());
				result=SUCCESS;
				break;
			}
		}
		return result;
	}


	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<LoginConfirmDTO> getSelectList() {
		return selectList;
	}

	public void setSelectList(List<LoginConfirmDTO> selectList) {
		this.selectList = selectList;
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

	public int getUserFlg() {
		return userFlg;
	}

	public void setUserFlg(int userFlg) {
		this.userFlg = userFlg;
	}

}
