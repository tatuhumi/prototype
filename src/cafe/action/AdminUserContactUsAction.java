package cafe.action;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

import cafe.dao.AdminUserContactUsDAO;
import cafe.dto.AdminUserContactUsDTO;

public class AdminUserContactUsAction extends ActionSupport{

	private ArrayList<AdminUserContactUsDTO> List=new ArrayList<AdminUserContactUsDTO>();

	public String execute(){
		String result=ERROR;
		AdminUserContactUsDAO dao=new AdminUserContactUsDAO();
		List=dao.select();
		if(List!=null){
			result=SUCCESS;
		}
		return result;
	}

	public ArrayList<AdminUserContactUsDTO> getList() {
		return List;
	}

	public void setList(ArrayList<AdminUserContactUsDTO> list) {
		List = list;
	}



}
