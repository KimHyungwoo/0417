<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %> <!-- JDBC Ŭ������ java.sql ��Ű���� ���ԵǾ� �ֱ� ������ �ݵ�� ����Ʈ�ؾ� �� -->

<%
	// 0. ��û ó��
	String id = request.getParameter("id");
	// out.print(id);
	String pass = request.getParameter("pwd");
	
	// 1. JDBC ����̹� �ε�
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2. �����ͺ��̽��� ����
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
	
	// 3. SQL�� ����
	String sql = "insert into member values('" + id + "','" + pass + "','ȫ�浿',20,'1','�����','2015-04-17')";
	Statement stmt = con.createStatement();
	int result = stmt.executeUpdate(sql);
	
	out.print(result);
	
	// 4. �����ͺ��̽��� ���� ����
	stmt.close();
	con.close();
	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>