package com.crudDemo.app.account;

import com.crudDemo.app.model.User;

public class UserAccountManager {

	public String registerUser(User user){
		String message = "";
		if (user != null) {// check if null
			if (user.getName().trim().isEmpty()) {// check if empty string
				message += "error, Please enter username";// return them a message
				return message;
			} else if (user.getName().matches("[a-zA-Z]*")) {
				message += "error, Invalid username, please try again.";
				return message;
			} else {
				message += "success";
			}
		}
		return message += "success";
	}

}
