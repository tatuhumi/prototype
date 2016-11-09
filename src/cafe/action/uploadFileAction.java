package cafe.action;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;

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

			System.out.println("Src File name: " + myFile);
			System.out.println("Dst File name: " + myFileFileName);

			File from=myFile;
			File to=new File(destPath+File.separator+myFileFileName);
			uploadFileAction.Filecopy(from,to);

			//			BufferedImage image = null;

			//	ファイル読み込み

			BufferedImage b=ImageIO.read(to);
			//			下の15０，15０の部分で出力先の大きさを変更できる
			int ww=300;
			int hh=300;
			BufferedImage b2=new BufferedImage(ww,hh,BufferedImage.TYPE_INT_RGB);
			Graphics g=b2.getGraphics();
			//上の定義により150,150ファイルなので、元のファイルの大きさにしたいときは15０，15０とする
			//75，75にすると上下、縦横を半分、半分したファイルとなる、他は真っ黒
			//			g.drawImage(b,0,0,200,200,0,0,b.getWidth(),b.getHeight(),null);
			Graphics2D g2 = (Graphics2D)g;
			g2.drawImage(b,0,0,300,300,0,0,b.getWidth(),b.getHeight(),null);
			//			g2.drawString("Hello Java2D", 30, 40);

			Font font2 = new Font("ＭＳ 明朝", Font.BOLD, 20);
			g2.setFont(font2);
			g2.setColor(Color.white);
			g2.drawString(comment,0,180);
			if(comment.length()>15){
				g2.drawString(comment.substring(15),0,200);
			}
			System.out.println(comment.substring(15));
			ImageIO.write(b2, "jpg", to);


			//			image = ImageIO.read(to);
			//
			//			Graphics graphics = image.createGraphics();
			//			Graphics2D g2 = (Graphics2D)graphics;
			//
			//			g2.drawString("Hello Java2D", 30, 40);
			//
			//			Font font2 = new Font("ＭＳ 明朝", Font.BOLD, 32);
			//			g2.setFont(font2);
			//			g2.setColor(Color.black);
			//			g2.drawString(comment, 0, image.getHeight()*2/3);
			//
			//
			//			//	ファイル保存
			//			ImageIO.write(image, "gif", to);


			if(count>0){
				result=SUCCESS;
			}
		}catch(IOException e){
			e.printStackTrace();
		}
		return result;
	}



	public static void Filecopy(File from, File to) throws IOException {
		BufferedOutputStream out = null;
		BufferedInputStream in = null;
		try {
			in = new BufferedInputStream(new FileInputStream(from));
			out = new BufferedOutputStream(new FileOutputStream(to));
			byte[] buff = new byte[4096];
			int len = 0;
			while ((len = in.read(buff, 0, buff.length)) >= 0) {
				out.write(buff, 0, len);
			}
		} finally {
			if (in != null) {
				try {
					in.close();
				} catch (IOException e) {
				}
			}
			if (out != null) {
				try {
					out.close();
				} catch (IOException e) {
				}
			}
		}
	}


	//			File destFile  = new File(destPath, myFileFileName);
	//			FileUtils.copyFile(myFile, destFile);
	//

	//			System.out.println(destPath+File.separator+myFileFileName);
	//
	//			String Path=destPath+File.separator+myFileFileName;
	//
	//			BufferedImage b=ImageIO.read(new File(Path));
	////			下の15０，15０の部分で出力先の大きさを変更できる
	//			int ww=150;
	//			int hh=150;
	//
	//			BufferedImage b2=new BufferedImage(ww,hh,BufferedImage.TYPE_INT_RGB);
	//
	//			Graphics g2=b2.getGraphics();
	////上の定義により150,150ファイルなので、元のファイルの大きさにしたいときは15０，15０とする
	////75，75にすると上下、縦横を半分、半分したファイルとなる、他は真っ黒
	//			g2.drawImage(b,0,0,150,150,0,0,b.getWidth(),b.getHeight(),null);
	//			g2.dispose();
	//
	//			ImageIO.write(b2, "jpg", new File(Path));



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