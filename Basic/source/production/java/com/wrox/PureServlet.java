package com.wrox;

/**
 * Created by welkang on 15/12/5.
 */

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class PureServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        String DEFAULT_USER = "Guest";
        String user = request.getParameter("user");
        if(user == null){
            user = DEFAULT_USER;
        }

        request.setAttribute("username", user);
        request.getRequestDispatcher("/WEB-INF/jsp/view/homepage.jsp")
                .forward(request, response);
    }
}
