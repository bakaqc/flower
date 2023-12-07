package com.bakaqc.flower.dao;


import com.bakaqc.flower.model.Product;
import com.bakaqc.flower.model.User;
import com.bakaqc.flower.service.Convert;
import com.bakaqc.flower.service.JDBC;
import java.sql.*;
import java.time.LocalDateTime;


public class CheckoutDAO {

    public void addOder(User user, Product p) {

        try {
            Connection conn = JDBC.getConnection();

            //add cart
            PreparedStatement smt = conn.prepareStatement("INSERT INTO `cart` (`user_id`, `product_id`, `amount`) VALUES (?, ?, ?)");
            smt.setInt(1, user.getId());
            smt.setInt(2, p.getPrice());
            smt.setInt(3, 1);
            smt.executeUpdate();

            //add oder
            PreparedStatement smt1 = conn.prepareStatement("INSERT INTO `order` (`user_id`, `total_price`, `payment`, `status`, `create_at`) VALUES (?, ?, ?, ?, ?)");
            smt1.setInt(1, user.getId());
            smt1.setInt(2, p.getPrice());
            smt1.setString(3, "COD");
            smt1.setString(4, "processing");
            smt1.setString(5, Convert.convert(LocalDateTime.now()));
            smt1.executeUpdate();

            // take oder_id
            PreparedStatement smt4 = conn.prepareStatement("Select top 1 id from `oder` oder by id decs");
            ResultSet rs=smt4.executeQuery();



            //add data_oder
            PreparedStatement smt3 = conn.prepareStatement("INSERT INTO `data_order` (`order_id`, `product_id`, `amount`) VALUES (?, ?, ?)");
            smt3.setInt(1, rs.getInt("id"));
            smt3.setInt(2, p.getId());
            smt3.setInt(3,1);

            smt.executeUpdate();
            
            
            
            JDBC.closeConnection(conn);
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }

    }

}
