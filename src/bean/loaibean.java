package bean;

public class loaibean {
	private String maloai;
	private String tenloai;
	//Phát sinh 2 hàm tạo : không tham số và đầy đủ tham số
	//Phát sinh các hàm get, set
	public loaibean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public loaibean(String maloai, String tenloai) {
		super();
		this.maloai = maloai;
		this.tenloai = tenloai;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	
}
