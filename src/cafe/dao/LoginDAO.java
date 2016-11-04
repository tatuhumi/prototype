package cafe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.util.DBConnector;

public class LoginDAO {

	public int insert(String name, String password) {
		int result = 0;
		DBConnector db = new DBConnector("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/", "cafe", "root",
				"mysql");
		Connection con = db.getConnection();

		String sql = "INSERT INTO user(name,password)VALUES(?,?)";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, password);
			result = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		 }finally {
	            try{
	                con.close();
	            }catch(SQLException e){
	                e.printStackTrace();
	            }
	        }
		return result;
	}


}
