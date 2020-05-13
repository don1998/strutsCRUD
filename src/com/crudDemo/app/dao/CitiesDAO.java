package com.crudDemo.app.dao;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public class CitiesDAO {
	private final String cities;
			
	public CitiesDAO(String citiesPath) {
		super();
		cities = citiesPath;
	}

	/**
	 * constructs the xml string to be sent to the browser
	 * 
	 * @param prefix
	 *            * @return
	 */
	public String getCitiesByName(String prefix) {
		File file = new File(cities);
		StringBuffer fileData = new StringBuffer();
		BufferedReader reader;
		try {
				reader = new BufferedReader(new FileReader(file));
			char[] buf = new char[1024];
			int numRead = 0;
			while ((numRead = reader.read(buf)) != -1) {
				String readData = String.valueOf(buf, 0, numRead);
				fileData.append(readData);
			}
			reader.close();
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String fileStr = fileData.toString();
		String xml = fileStr;
		
		XPathFactory xpathFactory = XPathFactory.newInstance();
		XPath xpath = xpathFactory.newXPath();
		
		InputSource source = new InputSource(new StringReader(xml));
		String status;
		StringBuffer citiesFound = new StringBuffer();
		try {
			XPathExpression expr = xpath.compile("//cities/city[contains(text(),'"+prefix+"')]");
			Object result = expr.evaluate(source, XPathConstants.NODESET);
			NodeList nodes = (NodeList) result;
			citiesFound.append("<cities>");
			for (int i = 0; i < nodes.getLength(); i++) {
			    //what you are going to find....
				Node singleNode = nodes.item(i);
				citiesFound.append(nodeToString(singleNode));
			}
			citiesFound.append("</cities>");
		} catch (XPathExpressionException e) {
			e.printStackTrace();
		}
		
		return citiesFound.toString();
	}
	
	private String nodeToString(Node node) {
	    StringWriter sw = new StringWriter();
	    try {
	      Transformer t = TransformerFactory.newInstance().newTransformer();
	      t.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
	      t.setOutputProperty(OutputKeys.INDENT, "yes");
	      t.transform(new DOMSource(node), new StreamResult(sw));
	    } catch (TransformerException te) {
	      System.out.println("nodeToString Transformer Exception");
	    }
	    return sw.toString();
	  }

}
