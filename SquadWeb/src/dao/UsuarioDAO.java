package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

import model.Usuario;

public class UsuarioDAO {
	public Usuario incluir(Usuario usuario) throws ParseException{
        String SQLInsert = "INSERT INTO Usuario (nome,cpf,fone,login,senha,tipo) VALUES (?,?,?,?,?,?)";
        try(Connection conn = ConnectionFactory.obtemConexao();
                PreparedStatement stm = conn.prepareStatement(SQLInsert);){
            stm.setString(1, usuario.getNome());
            stm.setInt(2, usuario.getCpf());
            stm.setInt(3, usuario.getFone());
            stm.setString(4, usuario.getLogin());
            stm.setString(4, usuario.getSenha());
            stm.setInt(6, usuario.getTipo());
            stm.execute();
            String sqlQuery = "SELECT LAST_INSERT_ID()";
            try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
					ResultSet rs = stm2.executeQuery();) {
				if(rs.next()) {
					usuario.setCod(rs.getInt(1));
				}
			}
        } catch (SQLException e) {
            e.printStackTrace();
           
        }
        return usuario;
    }
	
	public void atualizar(Usuario usuario) {
		String SQLUpdate = "UPDATE Usuario SET nome=?,fone=?,login=?,senha?,tipo=? WHERE idUsuario=?";
		try(Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(SQLUpdate);){
	            stm.setString(1, usuario.getNome()); 
	            stm.setInt(2, usuario.getFone());
	            stm.setString(3, usuario.getLogin());
	            stm.setString(4, usuario.getSenha());
	            stm.setInt(5,usuario.getTipo());
	            stm.setInt(6, usuario.getCod());
	            stm.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void excluir(int id) {
		String SQLDelete = "DELETE FROM Usuario WHERE idUsuario=?";
		try(Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(SQLDelete);){
			stm.setInt(1, id);
			stm.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Usuario carregar(int id) {
		String SQLSelect = "SELECT * FROM Usuario WHERE idUsuario = ?";
		Usuario usuario = new Usuario();
		try(Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(SQLSelect);){	
			stm.setInt(1, id);
			try(ResultSet rs = stm.executeQuery();){
				if (rs.next()) {
					usuario.setCod(rs.getInt("idUsuario"));
					usuario.setNome(rs.getString("nome"));
					usuario.setFone(rs.getInt("fone"));
					usuario.setLogin(rs.getString("login"));
					usuario.setSenha(rs.getString("senha"));
					usuario.setTipo(rs.getInt("tipo"));
							
				} return usuario;
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			}
		} catch (SQLException e1) {
			System.out.println(e1.getStackTrace());
			return null;
		}
	}
}
