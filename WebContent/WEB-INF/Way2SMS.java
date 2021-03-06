import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import javax.swing.*;
import java.awt.event.*;
import java.awt.*;

/**
 *
 * @author Abhishek and Nishkarsh
 */
public class Way2SMS implements ActionListener, KeyListener{
    private URLConnection sendSMSConnection;
    private String sessionCookie;
    private Proxy proxy;
    final String USERNAME="";//REQUIRED
    final String PASSWORD="";//REQUIRED
    final String ACTION="sa65sdf656fdfd";//REQUIRED
    
    JLabel lphone;
	JLabel lmsg;
	JTextField inputField;
	JTextArea Message;
	JPanel PanelA;
	//JList list;
	JButton button;
	JFrame frame;
	String phoneNumber;
    String message;
    String textMessage;
    String strPhoneNumber;
    String arrPhoneNUmber[];
    JLabel chars;
    int c=140;
    
	public void initialize()
	{
		frame=new JFrame();
		frame.setTitle("Nik's Message Sender");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		lphone=new JLabel("Phone Number : ");
		lmsg=new JLabel("Message : ");
		inputField=new JTextField("",11);
		Message=new JTextArea(10,20);
		Message.setLineWrap(true);
		PanelA=new JPanel();
		button=new JButton("Send Message");
		PanelA.add(lphone);
		PanelA.add(inputField);
		PanelA.add(lmsg);
		PanelA.add(Message);
		PanelA.add(button);
		frame.getContentPane().add(BorderLayout.CENTER,PanelA);
		chars=new JLabel(c+" Characters remaining");
		PanelA.add(BorderLayout.SOUTH,chars);
		frame.setSize(300, 400);
		frame.setVisible(true);
		button.addActionListener(this);
		Message.addKeyListener(this);
	}
	
	public void actionPerformed(ActionEvent event)
	{
		 String cookie=this.loginWay2SMS(USERNAME,PASSWORD);
		 phoneNumber= inputField.getText();
	     message=Message.getText();
	     String strPhoneNumber=phoneNumber.toString();
	     String arrPhoneNUmber[]=strPhoneNumber.split(";");
         for(String num:arrPhoneNUmber)
         {
          this.sendSMS(num, message, ACTION);
         }
         this.logoutWay2SMS();
         JLabel notify=new JLabel("Message Sent!");
         PanelA.add(BorderLayout.CENTER,notify);
         frame.setVisible(true);
	}
	
	public void keyTyped(KeyEvent event)
	{
		c=140-Message.getText().length();
		chars.setText(c+" Characters remaining");
	}
	
	public void keyPressed(KeyEvent event)
	{
		c=140-Message.getText().length();
		chars.setText(c+" Characters remaining");
	}
	
	public void keyReleased(KeyEvent event)
	{
		c=140-Message.getText().length();
		chars.setText(c+" Characters remaining");
	}
	
    //Function to support connection through an HTTP Proxy 
    public void setProxy(String proxyHost,int proxyPort)
    {
        proxy=new Proxy(Proxy.Type.HTTP,java.net.InetSocketAddress.createUnresolved(proxyHost, proxyPort));
    }
    //Logging in to Way2sms and returning the authentication cookie 
    //No need to Give the cookie back to sendSMS() but cookie is returned for expanding the flexibility of the code
    public String loginWay2SMS(String userName,String password)
    {
        String cookie=null;
        URL urlLogin;
        String loginContent;
        HttpURLConnection loginConnection;
        if(userName==null || userName.isEmpty())
        {
            System.err.println("A Valid User Name must be present!");
            System.exit(0);
        }
        if(password==null || password.isEmpty())
        {
            System.err.println("A Valid Password must be present!");
            System.exit(0);
        }
        try {
            //UTF-8 encoding is the web standard so data must be encoded to UTF-8
     
            
            
            userName=URLEncoder.encode(userName, "UTF-8");
            password=URLEncoder.encode(password, "UTF-8");
            urlLogin=new URL("http://site5.way2sms.com/Login1.action");
            if(proxy==null)
            {
                loginConnection = (HttpURLConnection) urlLogin.openConnection();
            }
            else
            {
                loginConnection = (HttpURLConnection) urlLogin.openConnection(proxy);
            }
            
            loginContent="username=" + userName + "&password=" + password;
            //Faking that we are from a valid client
            loginConnection.setDoOutput(true);
            loginConnection.setRequestProperty("User-Agent","Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.0.5) Gecko/2008120122 Firefox/3.0.5");
            loginConnection.setRequestProperty("Content-Length", String.valueOf(loginContent.length()));
            loginConnection.setRequestProperty("Content-Type","application/x-www-form-urlencoded");
            loginConnection.setRequestProperty("Accept", "*/*");
            loginConnection.setRequestProperty("Referer", "http://site5.way2sms.com/content/index.html?");
            loginConnection.setRequestMethod("POST");
            loginConnection.setInstanceFollowRedirects(false);
            //Writing the Content to the site
            PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(loginConnection.getOutputStream()), true);
            printWriter.print(loginContent);
            printWriter.flush();
            printWriter.close();
            //Reading the cookie
            cookie = loginConnection.getHeaderField("Set-Cookie");
            //System.out.println(cookie);
            
        } catch (MalformedURLException ex) {
           System.err.println("Login URL Error");
           System.exit(0);
        } catch (UnsupportedEncodingException ex) {
            System.err.println("Error in encoding Username or Password");
            System.exit(0);
        }catch (IOException ex) {
            System.err.println("Can not connect to Login URL");
            System.exit(0);
        } 
        if(cookie==null || cookie.isEmpty())
        {
            System.err.println("Some error occured...Try again in a few seconds..If still problem exists check your username and password");
        }
        sessionCookie=cookie;
        return cookie;
                
        
        
    }
    public void sendSMS(String phoneNumber,String message,String action)
    {
        
            if(phoneNumber==null || phoneNumber.isEmpty())
            {
                System.err.println("Enter A Valid Phone Number");
                System.exit(0);
            }
            else 
            {
                try
                {
                    
                    long testLong=Long.valueOf(phoneNumber);
                }catch(NumberFormatException ex)
                {
                    System.err.println("Invalid Phone Number");
                    System.exit(0);
                }
                    
                
            }
            
            if(message==null || message.isEmpty())
            {
                System.err.println("Message is Empty!");
                System.exit(0);
            }
            else if(message.length()>140)
            {
                System.err.println("Message should be less than 140 characters");
            }
            if(action==null || action.isEmpty())
            {
                System.err.println("Enter Valid Action to send Message");
                System.exit(0);
            }
           
            URL sendURL;
            HttpURLConnection sendConnection;
            String sendContent;
            try {
                 
                message=URLEncoder.encode(message, "UTF-8");
                sendURL=new URL("http://site5.way2sms.com/quicksms.action");
                if(proxy==null)
                {
                    sendConnection = (HttpURLConnection) sendURL.openConnection();
                }
                else 
                {
                    sendConnection = (HttpURLConnection) sendURL.openConnection(proxy);
                }
                sendContent="custid=undefined&HiddenAction=instantsms&Action="+action+"&login=&pass=&MobNo="+ phoneNumber+ "&textArea="+message;
                sendConnection.setDoOutput(true);
                sendConnection.setRequestProperty("User-Agent","Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.0.5) Gecko/2008120122 Firefox/3.0.5");
                sendConnection.setRequestProperty("Content-Length", String.valueOf(sendContent.getBytes().length));
                sendConnection.setRequestProperty("Content-Type","application/x-www-form-urlencoded");
                sendConnection.setRequestProperty("Accept", "*/*");
                sendConnection.setRequestProperty("Referer", "http://site5.way2sms.com//jsp/InstantSMS.jsp");
                sendConnection.setRequestProperty("Cookie", sessionCookie);
                sendConnection.setRequestMethod("POST");
                sendConnection.setInstanceFollowRedirects(false);
                
                PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(sendConnection.getOutputStream()),true);
                printWriter.print(sendContent);
                printWriter.flush();
                printWriter.close();
                //Reading the returned web page to analyse whether the operation was sucessfull
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(sendConnection.getInputStream()));
                StringBuilder SendResult=new StringBuilder();
                String line;
                while ((line=bufferedReader.readLine()) != null)
                {
                    SendResult.append(line);
                    SendResult.append('\n');
                    //Message has been submitted successfully
                }
                /*if(SendResult.toString().contains("Message has been submitted successfully"))
                {
                    System.out.println("Message sent to "+phoneNumber+" successfully.");
                  //  JOptionPane.showMessageDialog(null,"Message sent to "+phoneNumber+" successfully.");
                }
                else
                {
                    System.err.println("Message could not send to "+phoneNumber+". Also check login credentials");
                }*/
                bufferedReader.close();
                
            }catch (UnsupportedEncodingException ex) {
                System.err.println("Message content encoding error");
                System.exit(0);
            }catch (MalformedURLException ex) {
                System.err.println("Sending URL Error");
                System.exit(0);
            }catch (IOException ex) {
               System.err.println("Sending URL Connection Error");
               System.exit(0);
            } 
        
        
    }
    public void logoutWay2SMS()
    {
        try {
            HttpURLConnection logoutConnection;
            URL logoutURL;
            logoutURL = new URL("http://site5.way2sms.com/jsp/logout.jsp");
            if(proxy==null)
            {
               logoutConnection = (HttpURLConnection) logoutURL.openConnection(); 
            }
            else
            {
               logoutConnection = (HttpURLConnection) logoutURL.openConnection(proxy); 
            }
            
            logoutConnection.setRequestProperty("User-Agent","Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.0.5) Gecko/2008120122 Firefox/3.0.5");
            logoutConnection.setRequestProperty("Accept", "*/*");
            logoutConnection.setRequestProperty("Cookie", sessionCookie);
            logoutConnection.setRequestMethod("GET");
            logoutConnection.setInstanceFollowRedirects(false);
           BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(logoutConnection.getInputStream()));
            while ((bufferedReader.readLine()) != null);
            bufferedReader.close();
        } catch (MalformedURLException ex) {
            System.err.println("Logout URL Error");
            System.exit(0);
        }catch (IOException ex) {
            System.err.println("Logout URL Connection Error");
            System.exit(0);
        } 
    }
    Way2SMS()
    {   
        proxy=null; 
     
        sendSMSConnection=null;
    }
    
    public static void main(String args[])
    {  
        //HTTP PROXY
        //sms.setProxy("10.1.1.1",8080); //REQUIRED ONLY IF CONNECTING THROUGH A PROXY
        
    	Way2SMS sms=new Way2SMS();
		sms.initialize();
        
        /*if(args.length>0)
        {
          if(args[0].toLowerCase().compareTo("phone")==0)
          {
            int i=1;
            while(args[i].toLowerCase().compareTo("message")!=0)
            {
            
                phoneNumber.append(args[i]);
                 phoneNumber.append(';');
                i++;
            }
            /*for(i=i+1;i
            {
                message.append(args[i]);
                message.append(' ');
            }
          }
          else
          {
            System.out.println("USAGE : Way2SMS phone ... message ");
            System.exit(0);
          }
        } 
        else
        {
            System.out.println("USAGE : Way2SMS phone ... message ");
            System.exit(0);
        }
        
        */
    }
}
