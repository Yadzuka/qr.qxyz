package ru.eustrosoft.pack;

import com.google.zxing.WriterException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;

public class EngineServlet extends HttpServlet {

    private Engine engine;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init();

        engine = new Engine("EngineName", "123456789");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Enter doGet");

        String action = request.getParameter("action");
        request.setAttribute("engine", engine);

        System.out.println(action);
        switch (action == null ? "engine" : action) {
            case "update":
                request.getRequestDispatcher("/update.jsp").forward(request, response);
                break;
            case "engine":
            default:
                request.getRequestDispatcher("/engine.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Enter doPost");

        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        if ("submit".equals(action)) {
            engine.setName(request.getParameter("name"));
            engine.setSerial(request.getParameter("serial"));
        }

        request.setAttribute("engine", engine);
        request.getRequestDispatcher("/engine.jsp").forward(request, response);
    }
}
