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
public class loginadmin {

 public static boolean validate(floginadmin gt){
 boolean status=false;
 try{
 Connection con=koneksi.getKoneksi();
 PreparedStatement ps=con.prepareStatement
         ("select * from `admin` where username=? AND password=?");
 ps.setString(1,gt.getUsername());
 ps.setString(2,gt.getPassword());
 ResultSet rs=ps.executeQuery();
 status=rs.next();

 System.out.println(gt.getPassword());
 } catch(Exception e){ System.out.println(e); }
 return status;
 }
}
