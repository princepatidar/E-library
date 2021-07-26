package com.login.forget;

import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class SendEmail {

	public static void sendMail(String recepient,String uname) throws Exception
	{
		System.out.println("preparing to send mail..");
		
		Properties properties= new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		
		String myAccMail=""; //your gmail id
		String password=""; //your password
		
		Session session=Session.getInstance(properties,new  Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new  PasswordAuthentication(myAccMail,password);
			}	
			
		});
		
		Message message = prepareMessage(session,myAccMail,recepient,uname);
		Transport.send(message);
		System.out.println("Message sent successfully");
	}
	private static Message prepareMessage(Session session,String myAccMail,String recepient,String uname)
	{
		try{
			String msg="As per you have requested for reset password instructions,here they are,please follow the URL:";
			Message message=new MimeMessage(session);
			message.setFrom(new InternetAddress(myAccMail));
			message.setRecipient(Message.RecipientType.TO,new InternetAddress(recepient));
			message.setSubject("E-library password reset instructions.");
			
			//message.setHeader("Hi","");
			message.setContent("Hi "+uname+",<br>"+msg+"<br/><a href = http://localhost:8080/LoginModule/reset.jsp>Reset Password</a>","text/html" );
			
			return message;
		}
		catch(Exception e) { e.printStackTrace();}
		return null;
	}
	
}
