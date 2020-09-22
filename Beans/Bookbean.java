
package bookbean;

import java.io.Serializable;
public class Bookbean implements Serializable {


 private int id;
 private String name;
 private String email;
 private int number;
 private String address;
 private int night;

public Bookbean() {
        this.id = "UnKnown";
        this.name = "UnKnown";
        this.email = "UnKnown";
        this.number = (int) 0.0f;
        this.address = "UNKnown"
        }

    public Bookbean(int id,String name, String email, int number, String address ,int night) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.number = number;
        this.address = address;
        this.night = night;
    }


    
   
 public void setId(int Id) {
        this.id = id;
    }
        public String getName() {
        return name;
    }

    public void setName(String Name) {
        this.name = Name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getNight() {
        return night;
    }

    public void setNight(int night) {
        this.night = night;
    }
 
}

















