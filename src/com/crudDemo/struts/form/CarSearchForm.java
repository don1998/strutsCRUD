package com.crudDemo.struts.form;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts.action.ActionForm;

public class CarSearchForm extends ActionForm {
	private String[] makes = new String[] { "Toyota", "Honda", "Ford" };
	private Map make = new HashMap();
	private final Map values = new HashMap();
	private String email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String[] getMakes() {
		return makes;
	}

	public void setMakes(String[] makes) {
		makes = makes;
	}

	public Map getMake() {
		return make;
	}

	public void setMake(Map make) {
		this.make = make;
	}

	public void setMake(String key, Object value) {
		make.put(key, value);
	}

	public Object getMake(String key) {
		return make.get(key);
	}

	public Map getValues() {
		return values;
	}

	public void setValue(String key, Object value) {
		values.put(key, value);
	}

	public Object getValue(String key) {
		return values.get(key);
	}

	@Override
	public String toString() {
		Iterator iteratorMake = make.keySet().iterator();
		StringBuffer stbrMake = new StringBuffer();
		while (iteratorMake.hasNext()) {
			stbrMake.append(" [ ");
			String key = iteratorMake.next().toString();
			String[] values = (String[]) make.get(key);
			stbrMake.append(key + " => " + Arrays.toString(values));
			stbrMake.append(" ] ");
		}

		Iterator iteratorValues = values.keySet().iterator();
		StringBuffer stbrValue = new StringBuffer();
		while (iteratorValues.hasNext()) {
			stbrValue.append(" [ ");
			String key = iteratorValues.next().toString();
			String value = values.get(key).toString();
			stbrValue.append(key + " => " + value);
			stbrValue.append(" ] ");
		}

		return "CarSearchForm [makes=" + Arrays.toString(makes) + ", make=" + stbrMake + ", values=" + stbrValue + "]";
	}

}
