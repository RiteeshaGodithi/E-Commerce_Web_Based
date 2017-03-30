/******************************************************************************
*	Program Author: Dr. Yongming Tang for CSCI 6810 Java and the Internet	  *
*	Date: September, 2012													  *
*******************************************************************************/

import fdu.student.godithi.Account;
import java.io.*;
import javax.servlet.*;  //package for GenericServlet
import javax.servlet.http.*;  //package for HttpServlet
import java.util.*;
//import Course.Java.ProSample.*;

public class LoginServlet extends HttpServlet {
   private String Username, Password;
   private PrintWriter output;

   //a method called automatically to initialize the servlet
   public void init( ServletConfig config )
      throws ServletException
   {
      super.init( config );
      Username = new String("");
      Password = new String("");
   }

   //a method included in class HttpServlet to respond
   //to post requests from a client.
   public void doGet ( HttpServletRequest req, HttpServletResponse res )
      throws ServletException, IOException
   {	doPost(req, res);
   }

   //a method included in class HttpServlet to respond
   //to post requests from a client.
   public void doPost ( HttpServletRequest req, HttpServletResponse res )
      throws ServletException, IOException
   {
      //obtains a character-based output stream that enables
      //text data to be sent to the client
      output = res.getWriter();

      //specifies the MIME type of the response to the browser
      res.setContentType( "text/html" );

      //returns the value associated with a parameter sent to
      //the servlet as part of a post request
      Username = req.getParameter( "UserName" );
      Password = req.getParameter( "PassWord" );

      Account Acct = new Account(Username, Password);
	  String val=Acct.signIn();
	  if(val.contains(",")){
              HttpSession session=req.getSession();
              session.setAttribute("name", Username);
	  String[] vals=val.split(",");
      if (vals[0].equalsIgnoreCase("customer"))
           res.sendRedirect("/CSCI6810/Customer.jsp");
      else if(vals[0].equalsIgnoreCase("employee"))
           res.sendRedirect("/CSCI6810/Employee.jsp");
      }
	  else if(val.equalsIgnoreCase("invalid"))
	  {
	       output.println("Account creation failed because of existing username or invalid username. Please try again!");
	  }
   }

   //this "cleanup" method is called when a servlet is terminated by the server
   public void destroy() {
       output.close();
   }
}