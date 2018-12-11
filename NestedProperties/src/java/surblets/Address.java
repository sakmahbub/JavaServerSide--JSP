
package surblets;

import java.util.Collection;

public class Address {
    private String vill;
    private String thana;
    private String county;
    private String postCode;
    private Collection phoneNumber;

    public Address() {
        this.vill ="Bargacha";
        this.thana ="Adamdighi";
        this.county="Bangladesh";
        this.postCode = "6590";
        
    }

    public String getVill() {
        return vill;
    }

    public void setVill(String vill) {
        this.vill = vill;
    }

    public String getThana() {
        return thana;
    }

    public void setThana(String thana) {
        this.thana = thana;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public Collection getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Collection phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

   
    
    
    
    
}
