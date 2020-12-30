/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package function;

/**
 *
 * @author monica
 */
import java.sql.*;
public class regis {
 public static int simpan(fregis gt) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("insert into `user`(nama_user,username,password) values (?,?,?)");
 ps.setString(1, gt.getNamauser());
 ps.setString(2, gt.getUsername());
 ps.setString(3, gt.getPassword());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }
}
