package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

import model.Pedido;

public class PedidoDAO {
	
	public Pedido incluir(Pedido pedido) throws ParseException{
        String SQLInsert = "INSERT INTO Pedido (descricao,Remetente_Usuario_idUsuario,Destinatario_Usuario_idUsuario) VALUES (?,?,?)";
        try(Connection conn = ConnectionFactory.obtemConexao();
                PreparedStatement stm = conn.prepareStatement(SQLInsert);){
            stm.setString(1, pedido.getDescricao());
            stm.setInt(2, pedido.getIdRem());
            stm.setInt(3, pedido.getIdDes());
            stm.execute();
            String sqlQuery = "SELECT LAST_INSERT_ID()";
			try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
					ResultSet rs = stm2.executeQuery();) {
				if(rs.next()) {
					pedido.setId(rs.getInt(1));
				}
			}
        } catch (SQLException e) {
            e.printStackTrace();
           
        }
        return pedido;
    }
	
	public void atualizar(Pedido pedido) {
		String SQLUpdate = "UPDATE Pedido SET descricao=? WHERE idPedido=?";
		try(Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(SQLUpdate);){
	            stm.setString(1, pedido.getDescricao()); 
	            stm.setInt(2, pedido.getId());
	            stm.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void excluir(int id) {
		String SQLDelete = "DELETE FROM Pedido WHERE idPedido=?";
		try(Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(SQLDelete);){
			stm.setInt(1, id);
			stm.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Pedido carregar(int id) {
		String SQLSelect = "SELECT * FROM Pedido WHERE idPedido = ?";
		Pedido pedido = new Pedido();
		try(Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(SQLSelect);){	
			stm.setInt(1, id);
			try(ResultSet rs = stm.executeQuery();){
				if (rs.next()) {
					pedido.setId(rs.getInt("idPedido"));
					pedido.setDescricao(rs.getString("descricao"));
					pedido.setIdRem(rs.getInt("Remetente_Usuario_idUsuario"));
					pedido.setIdDes(rs.getInt("Destinatario_Usuario_idUsuario"));
							
				} return pedido;
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
