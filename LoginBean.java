package serv.bean;
import java.sql.*;
public class LoginBean {
	private String uname;
	private String pwd;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public int verify()
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select USERID,PASSWORD,STATUS from ADMIN where USERID='"+uname+"' and PASSWORD='"+pwd+"'");
			if(rs.next())
			{
				if(rs.getInt(3)==0)
				{
					System.out.println("Your Access has been Blocked.  Please contact respective authority");
					return 2;
				}
				stmt.executeUpdate("update ADMIN set attempts=0 where USERID='"+uname+"'");
				return 1;
			}
			else
			{
				stmt.executeUpdate("update ADMIN set attempts=attempts+1 where USERID='"+uname+"'");
				ResultSet rs1=stmt.executeQuery("select ATTEMPTS from ADMIN where USERID='"+uname+"'");
				if(rs1.next())
				{
					if(rs1.getInt(1)==3)
					{
						System.out.println("You have crossed the maximum try limit. Your account is blocked.");
						stmt.executeQuery("update ADMIN set STATUS=0 where USERID='"+uname+"'");
						return 3;
					}
				}
			}
			rs.close();
			stmt.close();
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return 4;
	}

}