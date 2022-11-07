package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
  public ArrayList<giohangbean> ds = 
		  new ArrayList<giohangbean>();
  public void Them(String masach, String tensach, long gia, long soluong) {
	  for(giohangbean h: ds)
		  if(h.getMasach().equals(masach)) {
			  h.setSoluong(h.getSoluong()+ soluong);
			  return;
		  }
	  
	  ds.add(new giohangbean(masach, tensach, gia, soluong));
  }
  public long Tongtien() {
	  long s=0;
	  for(giohangbean h: ds)
		  s=s+h.getThanhtien();
	  return s;
}
public void XoaItem(String masach) {
	  int n= ds.size();
	  if(masach!=null) {
		  for(giohangbean i: ds) {
			  if(i.getMasach().equals(masach)) {
				  ds.remove(i);
				  break;
			  }
		  }
	  }	  
}
public void Update(ArrayList<String> DsMaSach, ArrayList<Long> DsSoLuong) {
	  int n=DsMaSach.size();
	  for(int i=0; i<n; i++) 
		 for(giohangbean item: ds)
			 if(item.getMasach().equals(DsMaSach.get(i))){
				 
				 item.setSoluong(DsSoLuong.get(i));
			 }
	  
}
public void Capnhapgiohang(String masach, long soluong) {
    int n = ds.size();
    for(int i=0; i<n; i++) 
       for(giohangbean item: ds)
           if(item.getMasach().equals(masach)){

               item.setSoluong(soluong);
           }

}
}