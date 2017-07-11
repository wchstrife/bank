package dao;

import bean.Savingaccount;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by ASUS on 2017/7/10.
 */
public class SavingaccountDao {

	public Connection initConnection() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost/banking?user=root&password=root&useUnicode=true&characterEncoding=UTF-8";
		Connection conn = DriverManager.getConnection(url);

		return conn;
	}

	public ArrayList findByPid(int pid) throws Exception{
		ArrayList list = new ArrayList();
		Connection conn = initConnection();
		String sql = "SELECT * FROM savingaccount where pid = " + pid;
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);

		while(rs.next()){
			Savingaccount savingaccount = new Savingaccount();
			savingaccount.setId(rs.getInt("id"));
			savingaccount.setPid(rs.getInt("pid"));
			savingaccount.setBanlance(rs.getDouble("balance"));
			savingaccount.setBanlance(rs.getDouble("interestRate"));
			list.add(savingaccount);
		}

		stmt.close();
		conn.close();

		return list;
	}
}