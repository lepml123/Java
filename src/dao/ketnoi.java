package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ketnoi {

    public Connection cn;
    public void ketnoi(){
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            System.out.println("Xong b1");
            String url="jdbc:sqlserver://ADMIN\\KHIET:1433;databaseName=QlSach;user=sa; password=123456";
            cn=DriverManager.getConnection(url);
            System.out.println("Xong b2");
        }catch(Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        ketnoi kn=new ketnoi();
        kn.ketnoi();
    }

}
