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
import function.fadmin;
public class admin {
 public static List<fadmin> getAllRecords(){
List<fadmin> list=new ArrayList<fadmin>();
try{
Connection con=koneksi.getKoneksi();
PreparedStatement ps=con.prepareStatement("select * from admin");
ResultSet rs=ps.executeQuery();
while(rs.next()){
fadmin u=new fadmin();
u.setIdadmin(rs.getInt("id_admin"));
u.setNamaadmin(rs.getString("nama_admin"));
u.setUsername(rs.getString("username"));
u.setPassword(rs.getString("password"));
list.add(u);
}
}catch(Exception e){System.out.println(e);}
return list;
}
 
public static int update(fadmin u) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement
         ("update admin set nama_admin=?,username=?,password=? where id_admin=?");
 ps.setString(1, u.getNamaadmin());
 ps.setString(2, u.getUsername());
 ps.setString(3, u.getPassword());
 ps.setInt(4, u.getIdadmin());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }

 public static fadmin getRecordById(int id) {
 fadmin u = null;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("select * from admin where id_admin=?");
 ps.setInt(1, id);
 ResultSet rs = ps.executeQuery();
 while (rs.next()) {
 u = new fadmin();
 u.setIdadmin(rs.getInt("id_admin"));
 u.setNamaadmin(rs.getString("nama_admin"));
 u.setUsername(rs.getString("username"));
 u.setPassword(rs.getString("password"));
 }
 } catch (Exception e) {
 System.out.println(e);
 }
 return u;
 }
 
 public static int delete(fadmin u) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("delete from admin where id_admin=?");
 ps.setInt(1, u.getIdadmin());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 } 
}