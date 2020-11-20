package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private static final ThreadLocal<Connection> conn = new ThreadLocal<>();
	static
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch (ClassNotFoundException e)
		{
			throw new RuntimeException(e);
		}
	}
	
	public static Connection obtemConexao() throws SQLException {
		//if (conn.get() == null){
			String servidor = "localhost";
			String porta = "3306";
			String database = "carrinho";
			String usuario = "root";
			String senha = "root";
			conn.set(DriverManager
					.getConnection("jdbc:mysql://"+servidor+":"+porta+"/"+database+"?useSSL=false&useTimezone=true&serverTimezone=UTC", usuario, senha));
		//}
		return conn.get();
	}
	
	public static void fechar() throws SQLException {
		if(conn.get() != null){
			conn.get().close();
			conn.set(null);
		}
	}
}