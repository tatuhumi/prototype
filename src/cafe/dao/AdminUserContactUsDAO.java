package cafe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.util.DBConnector;

import cafe.dto.AdminUserContactUsDTO;

public class AdminUserContactUsDAO {

	private ArrayList<AdminUserContactUsDTO> List=new ArrayList<AdminUserContactUsDTO>();

	public ArrayList<AdminUserContactUsDTO> select (){;
	AdminUserContactUsDTO dto = null;
	Connection con = new DBConnector("com.mysql.jdbc.Driver","jdbc:mysql://localhost/","cafe","root","mysql").getConnection();
	String sql= "SELECT*FROM contact_us";
	try{
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();

		while(rs.next()){
			dto = new AdminUserContactUsDTO();
			dto.setContactId(rs.getInt("contact_id"));
			dto.setContactName(rs.getString("contact_name"));
			dto.setContactMail(rs.getString("contact_email"));
			dto.setContactContent(rs.getString("contact_content"));
			dto.setVal(rs.getString("contact_value"));
			dto.setContactDate(rs.getString("contact_date"));
			dto.setPrimarity(rs.getInt("contact_primarity"));
			List.add(dto);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return List;
	}
}
