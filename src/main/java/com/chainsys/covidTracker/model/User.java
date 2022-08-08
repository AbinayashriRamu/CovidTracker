package com.chainsys.covidtracker.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USER_LOGIN")
public class User {
	@Id
	@Column(name = "e_mail")
	private String eMail;
	@Column(name = "pass_word")
	private String passWord;
	@Column(name = "last_date_of_password_changed")
	private String lastDateOfPasswordchanged;
	@Column(name = "date_of_registration")
	private Date dateOfRegistration;
	@Column(name = "last_password")
	private String lastPassword;

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getLastDateOfPasswordchanged() {
		return lastDateOfPasswordchanged;
	}

	public void setLastDateOfPasswordchanged(String lastDateOfPasswordchanged) {
		this.lastDateOfPasswordchanged = lastDateOfPasswordchanged;
	}

	public Date getDateOfRegistration() {
		return dateOfRegistration;
	}

	public void setDateOfRegistration(Date dateOfRegistration) {
		this.dateOfRegistration = dateOfRegistration;
	}

	public String getLastPassword() {
		return lastPassword;
	}

	public void setLastPassword(String lastPassword) {
		this.lastPassword = lastPassword;
	}

}
