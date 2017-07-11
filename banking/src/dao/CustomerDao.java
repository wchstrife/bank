package dao;
import bean.Customer;

import java.sql.*;
import java.util.ArrayList;

/**
 * Created by ASUS on 2017/7/11.
 */
public class CustomerDao {

	public Connection initConnection() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost/banking?user=root&password=root&useUnicode=true&characterEncoding=UTF-8";
		Connection conn = DriverManager.getConnection(url);

		return conn;
	}

	public ArrayList getAllCustmoer() throws Exception{
		ArrayList list = new ArrayList();
		Connection conn = initConnection();
		String sql = "SELECT id,name,bank FROM customer";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()) {
			Customer customer = new Customer();
			customer.setId(rs.getInt("id"));
			customer.setName(rs.getString("name"));
			customer.setBank(rs.getString("bank"));
			list.add(customer);
		}
		conn.close();
		return list;
	}

	public void addCustomer(String name, String bank)throws Exception{
		Connection conn = initConnection();
		String sql = "insert into customer values (null, ?, ?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, name);
		psmt.setString(2, bank);
		psmt.executeUpdate();

		psmt.close();
		conn.close();
	}

	public Customer findByName(String name) throws Exception{
		Connection conn = initConnection();
		String sql = "SELECT * FROM customer where name = " + "'"+ name + "'";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		Customer customer = new Customer();
		customer.setId(rs.getInt("id"));
		customer.setName(rs.getString("name"));
		customer.setBank(rs.getString("bank"));

		stmt.close();
		conn.close();

		return customer;
	}
}
