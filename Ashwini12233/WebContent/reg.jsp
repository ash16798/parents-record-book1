
<%@ page import = "java.sql.*" %>
<%
String userid = request.getParameter("userid");
String pass = request.getParameter("pass");
String firstname = request.getParameter("firstname");
String surname = request.getParameter("surname");
String email = request.getParameter("email");
String contactno = request.getParameter("contactno");
String  Address= request.getParameter("Address");
String city = request.getParameter("city");
String aadharno = request.getParameter("aadharno");






try
{
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gates12", "root", "root");
	 PreparedStatement ps = conn.prepareStatement("insert into  user7 (userid, pass, firstname,surname, email,contactno,Address,city,aadharno) values(?,?,?,?,?,?,?,?,?)" );
	 ps.setString(1, userid);
	 ps.setString(2, pass);
	 ps.setString(3, firstname);
	 ps.setString(4, surname);
	 ps.setString(5, email);
	 ps.setString(6,contactno );
	 ps.setString(7,Address);
	 ps.setString(8,city);
	 ps.setString(9, aadharno);
	
	
	 
	 int x = ps.executeUpdate();
	 
	 if(x > 0)
	 {
		
		 response.sendRedirect("Login.html");

	 }
	 else
	 {
       System.out.println("Resgistration Failed...");
		 
	 }
	 
}
catch(Exception e)
{
	out.println(e);
}
%>