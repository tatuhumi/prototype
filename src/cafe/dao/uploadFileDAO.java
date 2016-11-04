package cafe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import com.internousdev.util.DBConnector;

public class uploadFileDAO {

	public int insert(String fileName,String comment){

		int count = 0;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String fileDay = sdf.format(System.currentTimeMillis());


		DBConnector db = new DBConnector("com.mysql.jdbc.Driver","jdbc:mysql://localhost/","cafe","root","mysql");
		Connection conn = db.getConnection();
		String sql = "INSERT INTO upload_file(file_name,file_day,file_comment)VALUES(?,?,?)";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			fileName="image/"+fileName;
			ps.setString(1,fileName);
			ps.setString(2,fileDay);
			ps.setString(3,comment);

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
