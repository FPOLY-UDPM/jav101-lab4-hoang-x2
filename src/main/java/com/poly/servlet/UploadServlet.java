package com.poly.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/upload")

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50
)
public class UploadServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        req.getRequestDispatcher("/upload.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
            throws ServletException, IOException {

        Part part = req.getPart("photo");

        String fileName =
                part.getSubmittedFileName();

        String path = req.getServletContext()
                .getRealPath("/static/files");

        File dir = new File(path);

        if (!dir.exists()) {
            dir.mkdirs();
        }

        part.write(path + File.separator + fileName);

        req.setAttribute("message",
                "Upload thành công: " + fileName);

        req.getRequestDispatcher("/upload.jsp")
                .forward(req, resp);
    }
}