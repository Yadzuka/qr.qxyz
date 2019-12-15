package org.eustrosoft.contractpkg.Controller;

import com.google.zxing.WriterException;
import org.eustrosoft.contractpkg.Model.CreateQR;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;

/*
    Creating QR using CreateQR class
 */
public class QRcodeServlet extends HttpServlet {
    // Global variables
    CreateQR qr;
    String qrString;

    //doGet method to create QR image (using engine/qr in jsp)
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        OutputStream str= resp.getOutputStream();
        String range = req.getParameter("range");
        String toQR = "http://qr.qxyz.ru/?q=" + range + "001"; // The last path needed to get from the existing folders
        try {
            qr = new CreateQR(toQR,resp.getOutputStream());
            qr.createQRImage();
        } catch (WriterException e) {
            e.printStackTrace();
        }
    }
}
