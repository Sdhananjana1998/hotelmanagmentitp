<%@page import="java.sql.*" %>
<% 
   
    String id=request.getParameter("id");  
    Connection conn;
    PreparedStatement pst;
    ResultSet rs;
    
    Class.forName("com.mysql.jdbc.Driver");
        
    conn =DriverManager.getConnection("jdbc:mysql://localhost/richmond","root","");
    pst = conn.prepareStatement("delete from cust_new_book where id=?");
    
    pst.setString(1,id);
    pst.executeUpdate(); 
     %>
     <script>
         alert("delete Succsess!");
     </script>

