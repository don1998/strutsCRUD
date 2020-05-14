package com.crudDemo.app.model;

public class User {
	private int id;
	private String name;
	private String password;
	private String companyName;
	private String email;
	private String website;
	private String phoneNumber;
	private String mobileNumber;
	private String country;
	private String message;

	public User() {
		super();
	}

	public User(String name, String password, String companyName, String email, String website, String phoneNumber,
			String mobileNumber, String country, String message) {
		super();
		this.name = name;
		this.password = password;
		this.companyName = companyName;
		this.email = email;
		this.website = website;
		this.phoneNumber = phoneNumber;
		this.mobileNumber = mobileNumber;
		this.country = country;
		this.message = message;
	}

	public User(int id, String name, String password, String companyName, String email, String website,
			String phoneNumber, String mobileNumber, String country, String message) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.companyName = companyName;
		this.email = email;
		this.website = website;
		this.phoneNumber = phoneNumber;
		this.mobileNumber = mobileNumber;
		this.country = country;
		this.message = message;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", companyName=" + companyName
				+ ", email=" + email + ", website=" + website + ", phoneNumber=" + phoneNumber + ", mobileNumber="
				+ mobileNumber + ", country=" + country + ", message=" + message + "]";
	}

}
