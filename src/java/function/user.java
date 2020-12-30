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
import java.util.ArrayList;
import java.util.List;
import function.fuser;
public class user {
 public static List<fuser> getAllRecords(){
List<fuser> list=new ArrayList<fuser>();
try{
Connection con=koneksi.getKoneksi();
PreparedStatement ps=con.prepareStatement("select * from data");
ResultSet rs=ps.executeQuery();
while(rs.next()){
fuser u=new fuser();
u.setNim(rs.getInt("nim"));
u.setNama(rs.getString("nama"));
u.setJk(rs.getString("jk"));
u.setKelas(rs.getString("kelas"));
u.setAlamat(rs.getString("alamat"));
list.add(u);
}
}catch(Exception e){System.out.println(e);}
return list;
}

public static int save(fuser gt) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("insert into `data` (nama,jk,kelas,alamat) values (?,?,?,?)");
 ps.setString(1, gt.getNama());
 ps.setString(2, gt.getJk());
 ps.setString(3, gt.getKelas());
 ps.setString(4, gt.getAlamat());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }
 
public static int update(fuser u) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement
         ("update data set nama=?,jk=?,kelas=?,alamat=? where nim=?");
 ps.setString(1, u.getNama());
 ps.setString(2, u.getJk());
 ps.setString(3, u.getKelas());
 ps.setString(4, u.getAlamat());
 ps.setInt(5, u.getNim());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }

 public static fuser getRecordById(int id) {
 fuser u = null;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("select * from data where nim=?");
 ps.setInt(1, id);
 ResultSet rs = ps.executeQuery();
 while (rs.next()) {
 u = new fuser();
 u.setNim(rs.getInt("nim"));
 u.setNama(rs.getString("nama"));
 u.setJk(rs.getString("jk"));
 u.setKelas(rs.getString("kelas"));
 u.setAlamat(rs.getString("alamat"));
 }
 } catch (Exception e) {
 System.out.println(e);
 }
 return u;
 }
 
 public static int delete(fuser u) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("delete from data where nim=?");
 ps.setInt(1, u.getNim());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 } 
}
