package cafe.action;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.apache.commons.io.FileUtils;

import com.opensymphony.xwork2.ActionSupport;

import cafe.dao.uploadFileDAO;

public class uploadFileAction extends ActionSupport{
	private File myFile;
	private String myFileContentType;
	private String myFileFileName;
	private String myFileName;
	private String destPath;
	private String comment;

	public String execute(){
		String result=ERROR;
		destPath = "C:"+File.separator+"pleiades"+File.separator+"workspace"+File.separator+"prototype"+File.separator+"WebContent"+File.separator+"image";

		try{
			String myFileFileName=myFileName;

			uploadFileDAO dao=new uploadFileDAO();
			int count=dao.insert(myFileFileName,comment);

			File destFile  = new File(destPath, myFileFileName);
			FileUtils.copyFile(myFile, destFile);

			System.out.println("Src File name: " + myFile);
			System.out.println("Dst File name: " + myFileFileName);
			System.out.println(destPath+File.separator+myFileFileName);

			String Path=destPath+File.separator+myFileFileName;

			BufferedImage b=ImageIO.read(new File(Path));
//			下の２００，２００の部分で出力先の大きさを変更できる
			int ww=150;
			int hh=150;

			BufferedImage b2=new BufferedImage(ww,hh,BufferedImage.TYPE_INT_RGB);

			Graphics g2=b2.getGraphics();
			System.out.println(b.getWidth());
			System.out.println(b.getHeight());
//上の定義により200,200ファイルなので、元のファイルの大きさにしたいときは２００，２００とする
//１００，１００にすると上下、縦横を半分、半分したファイルとなる、他は真っ黒
			g2.drawImage(b,0,0,150,150,0,0,b.getWidth(),b.getHeight(),null);
			g2.dispose();

			ImageIO.write(b2, "jpg", new File(Path));


			if(count>0){
				result=SUCCESS;
			}
		}catch(IOException e){
			e.printStackTrace();
		}
		return result;
	}


	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public File getMyFile() {
		return myFile;
	}



	public String getMyFileName() {
		return myFileName;
	}

	public void setMyFileName(String myFileName) {
		this.myFileName = myFileName;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String getMyFileContentType() {
		return myFileContentType;
	}

	public void setMyFileContentType(String myFileContentType) {
		this.myFileContentType = myFileContentType;
	}

	public String getMyFileFileName() {
		return myFileFileName;
	}

	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	public String getDestPath() {
		return destPath;
	}

	public void setDestPath(String destPath) {
		this.destPath = destPath;
	}

}