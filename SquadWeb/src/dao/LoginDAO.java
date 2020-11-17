package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Login;

public class LoginDAO {

	public Login logar(Login login) {
		String sqlSelect = "select idUsuario from Usuario where login=? and senha = ?";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);){
				stm.setString(1, login.getLogin());
				stm.setString(2, login.getSenha());
			try (ResultSet rs = stm.executeQuery()) {
				if (rs.next()) {
					login.setId(rs.getInt("idUsuario"));
					return login;
				} else {
					login.setId(0);
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
