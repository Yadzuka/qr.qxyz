package ru.eustrosoft.pack;

import com.google.zxing.WriterException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;

public class QRcodeServlet extends HttpServlet {

    CreateQR qr;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        OutputStream str= resp.getOutputStream();
        try {
            qr = new CreateQR("http://qr.qxyz.ru",resp.getOutputStream());
            qr.createQRImage();
        } catch (WriterException e) {
            e.printStackTrace();
        }
    }
}
