package payment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class paymentDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static int result;
	
	public static boolean insertpayment(String paymentmethod, String cardholdername, String cardnumber, String validthru) {
		
	boolean isSuccess = false;
	
				try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					String sql=  "INSERT INTO  payment VALUES(0,'"+paymentmethod+"','"+cardholdername+"','"+cardnumber+"','"+validthru+"')";
					int result=  stmt.executeUpdate(sql);
					
					if(result>0) {
						isSuccess=true;
					}else{
						isSuccess=false;
					}
					
				}
				catch(Exception e) {
					e.printStackTrace();
				}
		
		return isSuccess;
	} 

}
