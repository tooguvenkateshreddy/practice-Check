package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Product;

public class ProductImp implements ProductInterface{
	
	public boolean insert(Product e) {
		System.out.println("hello");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			PreparedStatement pstmt=con.prepareStatement("insert into Product values(?,?,?,?,?,?,?)");
			pstmt.setString(1, e.getProductid());
			pstmt.setString(2, e.getCategory());
			pstmt.setString(3, e.getName());
			pstmt.setString(4, e.getDescription());
			pstmt.setFloat(5, e.getPrice());
			pstmt.setString(6, e.getBrand());
			pstmt.setFloat(7, e.getRating());
			pstmt.execute();
			pstmt.close();
			con.close();
			return true;
		}
		catch(Exception e1)
		{
			System.out.println(e1);
		}
		return false;
	}
	
	public List<Product> findAll() {
		List<Product> list=new ArrayList<Product>();
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select NAME,BRAND,CATEGORY,RATING from PRODUCT");
			while(rs.next())
			{
				list.add(new Product(rs.getString(1),rs.getString(2),rs.getString(3),rs.getFloat(4)));
			}
			
			stmt.close();
			con.close();
			return list;
		}
		catch(Exception e1)
		{
			System.out.println(e1);
		}
		return null;
	}

	
}
