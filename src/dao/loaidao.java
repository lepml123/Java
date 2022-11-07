package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean>getloai(){
		ArrayList<loaibean> ds= new ArrayList<loaibean>();
		try {
			//b1 ket noi vao csdl
			ketnoi kn = new ketnoi();
			kn.ketnoi();
			//b2 lay du lieu ve
			String sql="select * from loai";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			ResultSet rs=cmd.executeQuery();
			while(rs.next()) {
				String maloai=rs.getString("maloai");
				String tenloai=rs.getString("tenloai");
				ds.add(new loaibean(maloai,tenloai));
			}
		
		rs.close();kn.cn.close();
		return ds;
		}
		catch (Exception e){
			e.printStackTrace();return null;
		}
//		ds.add(new loaibean("tin", "Công nghệ thông tin"));
//		ds.add(new loaibean("toán", "Toán Kinh Tế"));
//		ds.add(new loaibean("lý", "Vật Lý"));
//		ds.add(new loaibean("hoá", "Hoá Hữu Cơ"));
	}
}
