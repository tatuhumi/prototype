package cafe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import com.internousdev.util.DBConnector;



public class ContactUsDAO {


		public int insert(String contact_name,String contact_email, String contact_text,String val) {
			int count = 0;
			DBConnector db = new DBConnector("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/", "cafe", "root",
					"mysql");
			Connection con = db.getConnection();
			String sql = "INSERT INTO contact_us(contact_name, contact_email, contact_date,contact_content,contact_value)VALUES(?,?,?,?,?)";


			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String contact_date = sdf.format(System.currentTimeMillis());

			try {
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, contact_name);
				ps.setString(2, contact_email);
				ps.setString(3, contact_date);
				ps.setString(4, contact_text);
				ps.setString(5, val);
				count = ps.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return count;
		}

	}

