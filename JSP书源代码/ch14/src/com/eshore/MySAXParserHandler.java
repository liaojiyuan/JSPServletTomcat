package com.eshore;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.xml.sax.Attributes;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;

import com.eshore.pojo.Address;
import com.eshore.pojo.User;

public class MySAXParserHandler extends DefaultHandler{

	private Locator locator;
	private List<User> users = null;
	private User user;
	private Address address;
	private String preTag;
	@Override

    public void setDocumentLocator(Locator locator) {

        this.locator = locator;

    }
	@Override

    public void startDocument() throws SAXException {

		users = new ArrayList<User>();

		user = null;
		address =null;

        preTag = null;

    }
	 @Override

	    public void startElement(String uri, String localName, String qName,

	            Attributes attributes) throws SAXException {

	        if("user".equals(qName)) {
	        	user = new User();
                user.setCountry(attributes.getValue("country"));
	        }
	        if("address".equals(qName)){
	        	address = new Address();
	        	address.setState(attributes.getValue("state"));
	        }
	        preTag = qName;

	    }

	 

	    public void endElement(String uri, String localName, String qName)

	            throws SAXException {

	        if("user".equals(qName)) {

	        	users.add(user);

	        	user = null;

	        }
	        if("address".equals(qName)){
	        	user.setAddress(address);
	        	address=null;
	        }
	        
	        preTag = null;

	    }

	    public void characters(char ch[], int start, int length)

        throws SAXException {

		    if(preTag != null && user != null) {
		
		        String value = new String(ch, start, length);
		        if("name".equals(preTag)) {
		            user.setName(value);
		        } else if("english_name".equals(preTag)) {
		            user.setEnglish_name(value);
		        }else if("age".equals(preTag)){
		        	user.setAge(value);
		        }else if("sex".equals(preTag)){
		        	user.setSex(value);
		        }else if("description".equals(preTag)){
		        	user.setDescription(value);
		        }
		    }
		    if(preTag!=null&&address!=null){
		    	 String value = new String(ch, start, length);
		        if("city".equals(preTag)) {
		        	address.setCity(value);
		        } else if("area".equals(preTag)) {
		            address.setArea(value);
		        } 
		    }
	    }

	    public static void main(String[] args) throws Exception {

	        XMLReader xmlReader = XMLReaderFactory.createXMLReader();
	        MySAXParserHandler handler = new MySAXParserHandler();
	        xmlReader.setContentHandler(handler);
	        xmlReader.parse("F:\\users.xml");


	        List<User> list = handler.users;
	        for(User user:list){
	        	System.out.println(user.toString());
	        }

	    }


}
