package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Test {

	public static void main(String[] args) {
		try {
			
			int a=1;
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/how2java?characterEncoding=UTF-8",
					"root","123456");
			
			Statement s=c.createStatement();
	        String sql = "select * from hero order by id desc limit ?,? ";
	        
	       PreparedStatement ps = c.prepareStatement(sql);
	   
	            ps.setInt(1, 0);
	            ps.setInt(2, 3);
	   
	            ResultSet rs = ps.executeQuery();
	   
	            while (rs.next()) {
	                Hero hero = new Hero();
	                int id = rs.getInt(1);
	                String name = rs.getString(2);
	                float hp = rs.getFloat("hp");
	                int damage = rs.getInt(4);
	                System.out.println(id+"  " + name);
	            }
/*			String sql = "insert into hero values(null,"+"'提莫'"+","+313.0f+","+50+")";
			s.execute(sql);*/
			System.out.println("成功:");
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}

}
