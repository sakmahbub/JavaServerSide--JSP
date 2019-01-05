
package domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@SessionScoped
@ManagedBean
public class Product {
    
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    
    private int pid;
    private String pname;
    private int price;
    private int stock;
    private int tprice;
    private int selectedpid;
    private List<Product> proList = new ArrayList<>();

    public Product() {
    }

    public Product(int pid, String pname, int price, int stock, int tprice) {
        this.pid = pid;
        this.pname = pname;
        this.price = price;
        this.stock = stock;
        this.tprice = tprice;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getTprice() {
        return tprice;
    }

    public void setTprice(int tprice) {
        this.tprice = tprice;
    }

    public List<Product> getProList() {
        return proList;
    }

    public void setProList(List<Product> proList) {
        this.proList = proList;
    }

    public int getSelectedpid() {
        return selectedpid;
    }

    public void setSelectedpid(int selectedpid) {
        this.selectedpid = selectedpid;
    }

    
    public void doSave(){ 
        ConnectDb cd = new ConnectDb();
        try {
            conn=cd.doConnect();
            ps = conn.prepareStatement("insert into product values(?,?,?,?,?)");
            ps.setInt(1, pid); 
            ps.setString(2, pname); 
            ps.setInt(3, price); 
            ps.setInt(4, stock); 
            ps.setInt(5, tprice); 
            
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    
    public List<Product> doShow(){ 
        ConnectDb cd = new ConnectDb();
        try {
            conn=cd.doConnect();
            ps = conn.prepareStatement("select * from product");
            rs=ps.executeQuery();
            proList.clear();
            while (rs.next()) {
                Product product = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5));
                proList.add(product);
            }     
        } catch (Exception e) {
        }
        return proList;
    }
      
    public void doUpdate(){ 
        ConnectDb cd = new ConnectDb();
        try {
            conn=cd.doConnect();
            ps = conn.prepareStatement("update product set pname=?,price=?,stock=?,tprice=? where pid =?");
            
            ps.setString(1, pname); 
            ps.setInt(2, price); 
            ps.setInt(3, stock); 
            ps.setInt(4, tprice); 
            ps.setInt(5, pid); 
            
            ps.executeUpdate();
            doShow();
        } catch (Exception e) {
        }
    }
    public void doDelete(){ 
        ConnectDb cd = new ConnectDb();
        try {
            conn=cd.doConnect();
            ps = conn.prepareStatement("delete from product where pid =?");
            
            ps.setInt(1, pid); 
            
            ps.executeUpdate();
            doShow();
        } catch (Exception e) {
        }
    }
}
