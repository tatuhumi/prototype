package cafe.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import cafe.dao.SelectMainDAO;
import cafe.dto.SelectMainDTO;

/**
 * 入力されたユーザーIDをDAOに渡してレビュー情報を操作するためのクラス
 *
 * @author YUKI MAEDA
 * @since 2016/08/11
 */
public class SelectMainAction extends ActionSupport {
	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = -75847044350L;
	/**
	 * データベースに格納されていセレクトリスト
	 */
	private List<SelectMainDTO> selectList = new ArrayList<SelectMainDTO>();
	/**
	 * ユーザーID
	 */
	private String summary="";
	/**
	 * エラーメッセージ
	 */
	private String errorMsg;


	private List<SelectMainDTO> selectList2 = new ArrayList<SelectMainDTO>();
	private List<SelectMainDTO> selectList3 = new ArrayList<SelectMainDTO>();

	/**
	 * 実行メソッド DAOに入力されたデータを渡して、結果を返す
	 *
	 * @author YUKI MAEDA
	 * @return result データベースに格納できたらSUCCESS、失敗したらERROR
	 */
	public String execute() {
		String result = ERROR;
		SelectMainDAO dao = new SelectMainDAO();
		selectList = dao.select(summary);
		for(int i=0;i<selectList.size();i++){
		if(selectList.get(i).getFileNumber()%2==0){
			selectList2.add(selectList.get(i));
		}else{
			selectList3.add(selectList.get(i));
		}
		}

		if (selectList.size() != 0) {
			result = SUCCESS;
		} else {
			errorMsg = "該当する情報は存在しません";
		}
		return result;
	}



	public List<SelectMainDTO> getSelectList2() {
		return selectList2;
	}

	public void setSelectList2(List<SelectMainDTO> selectList2) {
		this.selectList2 = selectList2;
	}

	public List<SelectMainDTO> getSelectList3() {
		return selectList3;
	}

	public void setSelectList3(List<SelectMainDTO> selectList3) {
		this.selectList3 = selectList3;
	}

	public List<SelectMainDTO> getSelectList() {
		return selectList;
	}

	public void setSelectList(List<SelectMainDTO> selectList) {
		this.selectList = selectList;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


}