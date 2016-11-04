package cafe.action;


import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
/**
 * LogoutAction セッションを切断するクラス
 *
 * @author YUKI MAEDA
 * @version 1.0
 */
public class LogoutAction extends ActionSupport implements SessionAware {
	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = -758657737453425420L;
    /**
     * セッション
     */
    public Map<String, Object> sessionMap;

    /**
     * セッションを切断する
     *
     *
     * @author YUKI MAEDA
     * @return result セッションを切断し、SUCCESSを戻り値として返す
     */
    public String execute() {

        sessionMap.clear();
        return SUCCESS;
    }

    /**
     * 取得メソッド セッションを取得
     *
     * @author YUKI MAEDA
     * @return sessionMap 取得するセッションマップ
     */
    public Map<String, Object> getSessionMap() {
        return sessionMap;
    }
    /**
     * 格納メソッド セッションを格納
     *
     * @author YUKI MAEDA
     * @param sessionMap
     *            格納するセッションマップ
     */
    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

}
