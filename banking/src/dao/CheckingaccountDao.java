package dao;

import bean.Checkingaccount;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by ASUS on 2017/7/11.
 */
public class CheckingaccountDao {
	public Connection initConnection() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost/banking?user=root&password=root&useUnicode=true&characterEncoding=UTF-8";
		Connection conn = DriverManager.getConnection(url);

		return conn;
	}

	public ArrayList findByPid(int pid) throws Exception{
		ArrayList list = new ArrayList();
		Connection conn = initConnection();
		String sql = "SELECT * FROM checkingaccount where pid = " + pid;
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);

		while(rs.next()){
			Checkingaccount checkingaccount = new Checkingaccount();
			checkingaccount.setId(rs.getInt("id"));
			checkingaccount.setPid(rs.getInt("pid"));
			checkingaccount.setBanlance(rs.getDouble("balance"));
			checkingaccount.setProtect(rs.getDouble("protect"));
			list.add(checkingaccount);
		}

		stmt.close();
		conn.close();

		return list;
	}
}
