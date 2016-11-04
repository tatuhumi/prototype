package cafe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.util.DBConnector;

public class AdminUserContactUsEditDAO {

	public int update(int contactId,String contactval,String contactName,String contactMail,String contactDate,String contactContent){

		int count = 0;

		DBConnector db = new DBConnector("com.mysql.jdbc.Driver","jdbc:mysql://localhost/","cafe","root","mysql");
		Connection conn = db.getConnection();
		String sql = "UPDATE contact_us SET contact_value=?, contact_name=?, contact_email=?, contact_date=?, contact_content=? where contact_id=?";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1,contactval);
			ps.setString(2,contactName);
			ps.setString(3,contactMail);
			ps.setString(4,contactDate);
			ps.setString(5,contactContent);
			ps.setInt(6,contactId);

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
