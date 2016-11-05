package cafe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.util.DBConnector;

import cafe.dto.LoginConfirmDTO;

public class LoginConfirmDAO {

	public List<LoginConfirmDTO> selectList = new ArrayList<LoginConfirmDTO>();


	public List<LoginConfirmDTO> select() {
		DBConnector db = new DBConnector("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/", "cafe", "root",
				"mysql");
		Connection con = db.getConnection();

		try {
			String sql = "SELECT * FROM  user";

			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				LoginConfirmDTO dto = new LoginConfirmDTO();
				dto.setName(rs.getString("name"));
				dto.setPassword(rs.getString("password"));
				dto.setUserFlg(rs.getInt("user_flg"));
				selectList.add(dto);
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
		return selectList;
	}
}
