package cafe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.util.DBConnector;

import cafe.dto.SelectMainDTO;

/**
 * AdminReviewDAO レビュー情報に接続する為のクラス
 *
 * @author YUKI MAEDA
 * @since 2016/08/18
 * @version 1.0
 */
public class SelectMainDAO {

    /**
     * 抽出メソッド ログインした際にDBからサイト情報をリスト化して抽出し、DTOに格納する
     *
     * @author YUKI MAEDA
     * @return articleList 抽出に成功したらSUCCESS、失敗したらERROR
     */
    public List<SelectMainDTO> selectList = new ArrayList<SelectMainDTO>();


    public List<SelectMainDTO> select(String comment) {
        DBConnector db = new DBConnector("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/", "cafe", "root",
                "mysql");
        Connection con = db.getConnection();

        try {
         String sql = "SELECT *FROM  upload_file WHERE file_comment LIKE '%" + comment + "%'";

            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	SelectMainDTO dto = new SelectMainDTO();
            	dto.setFileNumber(rs.getInt("upload_file_id"));
            	dto.setFileName(rs.getString("file_name"));
                dto.setFileDay(rs.getString("file_day"));
                dto.setFileComment(rs.getString("file_comment"));

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