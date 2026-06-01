package com.poly.servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/dang-ky")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        req.getRequestDispatcher("/register.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String gender = req.getParameter("gender");
        String married = req.getParameter("married");
        String country = req.getParameter("country");
        String note = req.getParameter("note");

        String[] hobbies =
                req.getParameterValues("hobby");

        System.out.println("Username: " + username);
        System.out.println("Password: " + password);
        System.out.println("Gender: " + gender);
        System.out.println("Married: " + married);
        System.out.println("Country: " + country);
        System.out.println("Hobbies: "
                + Arrays.toString(hobbies));
        System.out.println("Note: " + note);

        req.setAttribute("message",
                "Đăng ký thành công!");

        req.getRequestDispatcher("/register.jsp")
                .forward(req, resp);
    }
}