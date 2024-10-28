package com.bean;

import org.hibernate.validator.constraints.NotBlank;

public class Purchasers {
   private int pid;
   @NotBlank(message="")
   private String loginaccount;
   @NotBlank(message="")
   private String password;
   @NotBlank(message="")
   private String truename;
   @NotBlank(message="")
   private String telephone;
   @NotBlank(message="")
   private String ptypes;
   

public String getPtypes() {
	return ptypes;
}
public void setPtypes(String ptypes) {
	this.ptypes = ptypes;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}

public String getLoginaccount() {
	return loginaccount;
}
public void setLoginaccount(String loginaccount) {
	this.loginaccount = loginaccount;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public String getTruename() {
	return truename;
}
public void setTruename(String truename) {
	this.truename = truename;
}
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}

  
   

}
