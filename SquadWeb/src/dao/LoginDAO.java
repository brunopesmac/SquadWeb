package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Login;

public class LoginDAO {
	
	public Login logar(Login login) {
		String sqlSelect = "select idUsuario from Usuario where login="+login.getLogin()+"and senha ="+login.getSenha()+"";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);
				) {
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					login.setId(rs.getInt("idUsuario"));
					return login;
				} else {
					login.setId(0);
					login.setLogin(null);
					login.setSenha(null);
				}
				return login;
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
			return null;
		}	
	}

}
