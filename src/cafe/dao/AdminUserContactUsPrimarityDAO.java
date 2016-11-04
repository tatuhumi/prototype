package cafe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.util.DBConnector;

public class AdminUserContactUsPrimarityDAO {

	public int update(int contactId,int primarity){

		int count = 0;

		DBConnector db = new DBConnector("com.mysql.jdbc.Driver","jdbc:mysql://localhost/","cafe","root","mysql");
		Connection conn = db.getConnection();
		String sql = "UPDATE contact_us SET contact_primarity=? where contact_id=?";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(1,primarity);
			ps.setInt(2,contactId);

			count = ps.executeUpdate();

		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return count;

	}

}
