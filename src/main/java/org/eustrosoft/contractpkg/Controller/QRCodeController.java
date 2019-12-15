package org.eustrosoft.contractpkg.Controller;

import com.google.zxing.WriterException;
import org.eustrosoft.contractpkg.Model.CreateQR;

import javax.imageio.ImageIO;
import java.io.IOException;
import java.io.OutputStream;

/*
    Controller to create QR image from stream
 */
public class QRCodeController {

    CreateQR qr;
    String qrString;

    public void createQRimage(String reference, OutputStream outputStream){
        OutputStream str= outputStream;
        try {
            qr = new CreateQR(reference, outputStream);
            qr.createQRImage();
        } catch (WriterException | IOException e) {
            e.printStackTrace();
        }
    }
    public void getQrCode(){

    }
}
