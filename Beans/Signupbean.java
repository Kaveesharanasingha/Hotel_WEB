
package signupbean;

import java.io.Serializable;

public class Signupbean implements Serializable {

    private String fname;
    private String lname;
    private String uname;
    private String address;
    private String email;
    private String password;

    public Signupbean() {
        this.fname = "UnKnown";
        this.lname = "UnKnown";
        this.uname = "UnKnown";
        this.address ="UnKnown";
        this.email="UnKnown";
        this.password="UnKnown";
    }

    public Signupbean(String fname, String lname, String uname, String address,String email,String password) {
        this.fname = fname;
        this.lname = lname;
        this.uname = uname;
        this.address =address;
        this.email=email;
        this.password=password;
    }
    
    
}
    


