package com.login.bean;

//Constrauctor
//Setter Methods
//Getter Methods
//(Alt+Insert)

public class UserLoginBean 
{

    private int uid;
    private String ufirstname;
    private String usurname;
    private String email;
    private String password;
    private String umobilephonenumber;
    private String ubirthmonth;
    private String ubirthday;
    private String ubirthyear;
    private String ugender;
    private String uprofilepic;

    public UserLoginBean() {
       
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUfirstname() {
        return ufirstname;
    }

    public void setUfirstname(String ufirstname) {
        this.ufirstname = ufirstname;
    }

    public String getUsurname() {
        return usurname;
    }

    public void setUsurname(String usurname) {
        this.usurname = usurname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUmobilephonenumber() {
        return umobilephonenumber;
    }

    public void setUmobilephonenumber(String umobilephonenumber) {
        this.umobilephonenumber = umobilephonenumber;
    }

    public String getUbirthmonth() {
        return ubirthmonth;
    }

    public void setUbirthmonth(String ubirthmonth) {
        this.ubirthmonth = ubirthmonth;
    }

    public String getUbirthday() {
        return ubirthday;
    }

    public void setUbirthday(String ubirthday) {
        this.ubirthday = ubirthday;
    }

    public String getUbirthyear() {
        return ubirthyear;
    }

    public void setUbirthyear(String ubirthyear) {
        this.ubirthyear = ubirthyear;
    }

    public String getUgender() {
        return ugender;
    }

    public void setUgender(String ugender) {
        this.ugender = ugender;
    }

    
    public String getUprofilepic() 
    {
        return uprofilepic;
    }

    public void setUprofilepic(String uprofilepic) 
    {
        this.uprofilepic = uprofilepic;
    }
    
    public UserLoginBean(int uid, String ufirstname, String usurname, String email, String password, String umobilephonenumber, String ubirthmonth, String ubirthday, String ubirthyear, String ugender, String uprofilepic) 
    {
        this.uid = uid;
        this.ufirstname = ufirstname;
        this.usurname = usurname;
        this.email = email;
        this.password = password;
        this.umobilephonenumber = umobilephonenumber;
        this.ubirthmonth = ubirthmonth;
        this.ubirthday = ubirthday;
        this.ubirthyear = ubirthyear;
        this.ugender = ugender;
        this.uprofilepic=uprofilepic;
    }
    

}