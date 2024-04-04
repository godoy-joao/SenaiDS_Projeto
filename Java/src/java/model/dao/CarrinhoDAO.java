/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import com.mysql.jdbc.Connection;
import conexao.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.Carrinho;
import model.bean.CarrinhoProduto;
import model.bean.Usuario;



/**
 *
 * @author Joao Guilherme
 */
public class CarrinhoDAO {
    
    //Ainda em produção por ser complexo demais.
    private List<CarrinhoProduto> read(Usuario u) {
        Carrinho carrinho = new Carrinho();
        List<CarrinhoProduto> produtos = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            stmt = conexao.prepareStatement("SELECT * FROM carrinho WHERE idCarrinho = ?");
            stmt.setInt(1, u.getIdUsuario());
            
            if (rs.next()) {
                carrinho.setIdCarrinho(rs.getInt("idCarrinho"));
                carrinho.setUsuario(u.getIdUsuario());
            }
            
            
            rs.close();
            stmt.close();
            conexao.close();
            
        } catch (SQLException e) {
            e.printStackTrace();
                   
        }
        return produtos;
    }
}
