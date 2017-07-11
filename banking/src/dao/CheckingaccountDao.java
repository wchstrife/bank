package dao;

import bean.Checkingaccount;

import java.sql.*;
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

	public String withDraw(int id, double amt) throws Exception{

		Connection conn = initConnection();
		Statement stmt = conn.createStatement();
		String sql = "SELECT * FROM checkingaccount where id = " + id;
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		double balance = rs.getDouble("balance");
		double protect = rs.getDouble("protect");

		Connection connection = initConnection();
		PreparedStatement ps = connection.prepareStatement("UPDATE checkingaccount SET balance = ?, protect = ? WHERE id = ?");

		if(balance > amt){
			balance -= amt;
			ps.setDouble(1, balance);
			ps.setDouble(2, protect);
			ps.setDouble(3, id);
			ps.executeUpdate();
		}else if(protect > (amt - balance)){
			protect -= (amt - balance);
			balance = 0;
			ps.setDouble(1, balance);
			ps.setDouble(2, protect);
			ps.setDouble(3, id);
			ps.executeUpdate();
		}else {

			stmt.close();
			ps.close();
			conn.close();
			return "取款失败";
		}

		stmt.close();
		ps.close();
		conn.close();
		return "取款成功";
	}

	public String save(int id, double amt) throws Exception{

		Connection conn = initConnection();
		Statement stmt = conn.createStatement();
		String sql = "SELECT * FROM checkingaccount where id = " + id;
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();

		double balance = rs.getDouble("balance");

		Connection connection = initConnection();
		PreparedStatement ps = connection.prepareStatement("UPDATE checkingaccount SET balance = ? WHERE id = ?");
		ps.setDouble(1, balance + amt);
		ps.setInt(2, id);
		ps.executeUpdate();

		stmt.close();
		ps.close();
		conn.close();

		return "取款成功";
	}
}
