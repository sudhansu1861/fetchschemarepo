package com.cg;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FetchSchemaDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList al = new ArrayList();
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		  Connection connection = null;
		
		  PreparedStatement statement=null;
		  ResultSet rs=null;
		try{
			
        Class.forName("org.postgresql.Driver");
      
        connection = DriverManager.getConnection("jdbc:postgresql://localhost:5433/MySFDCDatabase","postgres", "saswat10!@");
        String sql="select * from sfdcschemadetails";
         statement = connection.prepareStatement(sql);
         rs=statement.executeQuery();  
       while(rs.next())
        {
        	
        	SchemaObject so=new SchemaObject();
        	so.setField1(rs.getInt("field_1"));
        	so.setField2(rs.getString("field_2"));
            so.setField3(rs.getString("field_3"));
            
                   al.add(so);
       }
    
         		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		try {
			//connection.commit();
			rs.close();
			statement.close();
		    connection.close();
		    
		} catch (SQLException e) {
		    e.printStackTrace();
		}
		 req.setAttribute("list", al);
		
		
	    RequestDispatcher view = req.getRequestDispatcher("demoJSP.jsp");
	    view.forward(req, res);
	
	
	}

}
