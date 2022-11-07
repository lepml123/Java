package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean>getsach(){
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
//	ds.add(new sachbean("s2", "Cấu trúc dữ liệu", "Lê Nam",
//				10 ,150, "b1.jpg", "tin"));
//	ds.add(new sachbean("s1", "Cấu trúc dữ liệu 2", "Lê Nam",
//			10 ,150, "b3.jpg", "tin"));
//	ds.add(new sachbean("s3", "Cấu trúc dữ liệu 3", "Lê Nam",
//			10 ,150, "b4.jpg", "tin"));
//	ds.add(new sachbean("s4", "Giải tích", "Lê Tu",
//			10 ,150, "b5.jpg", "toan"));
//	ds.add(new sachbean("s5", "Giải tích 2", "Lê Tu 2",
//			10 ,150, "b6.jpg", "tin"));
//	ds.add(new sachbean("s6", "Lý đại cương", "Lê Nam",
//			10 ,150, "b7.jpg", "ly"));
//	return ds;
		
            try {
                ketnoi kn=new ketnoi();
                kn.ketnoi();
                //b2 lay du lieu ve
                String sql="select * from sach";
                PreparedStatement cmd=kn.cn.prepareStatement(sql);
                ResultSet rs=cmd.executeQuery();
                //Luu all du lieu vao mang ds
                while(rs.next()) {
                    String masach=rs.getString("masach");
                    String tensach=rs.getString("tensach");
                    String tacgia=rs.getString("tacgia");
                    int soluong=rs.getInt("soluong");
                    int gia =rs.getInt("gia");
                    String anh=rs.getString("anh");
                    String maloai=rs.getString("maloai");
                    ds.add(new sachbean(masach,tensach,tacgia,soluong,gia,anh,maloai));

                }
                //b4 dong ket noi
                rs.close();kn.cn.close();
                return ds;

                }catch(Exception e) {
                    e.printStackTrace();return null;
                }

	}
}
