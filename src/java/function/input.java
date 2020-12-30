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
public class input {
public static int save(finput gt) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("insert into `data`(nim,nama,jk,kelas,alamat) values (?,?,?,?,?)");
 ps.setInt(1, gt.getNim());
 ps.setString(2, gt.getNama());
 ps.setString(3, gt.getJk());
 ps.setString(4, gt.getKelas());
 ps.setString(5, gt.getAlamat());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }
}