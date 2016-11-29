/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toba.business.authentication;

import com.toba.business.shared.User;
import com.toba.data.UserDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Jason
 */
@WebServlet(urlPatterns = {"/ResetPasswordServlet"})
public class ResetPasswordServlet extends HttpServlet {

  @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException{
    
        response.setContentType("text/html;charset=UTF-8");
             String url = "/password_reset.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("submit")) {
            url = "/password_reset.jsp";   
        }
        else if (action.equals("add")) {                
            // get parameters from the request
            
            //String password = request.getParameter("password");
           
            HttpSession session = request.getSession();
            User user = (User)session.getAttribute("user");
            String password = request.getParameter("password");
            user.setPassword(password);
            session.setAttribute("user", user);
            UserDB.update(user);

            // set User object in request object and set URL
            url = "/account_activity.jsp";   // edit me
        }
        
        // forward request and response objects to specified URL
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
        doPost(request, response);
    }  

}