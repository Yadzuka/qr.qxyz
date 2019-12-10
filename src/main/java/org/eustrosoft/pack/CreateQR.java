package org.eustrosoft.pack;

import java.awt.image.DataBuffer;
import java.awt.image.DataBufferByte;
import java.awt.image.WritableRaster;
import java.util.*;
import java.awt.*;
import java.io.*;
import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

public class CreateQR {

    private static String qrCodeText;
    private static int size;
    private static String fileType;
    private OutputStream outStream;

    private static CreateQR ourInstance = new CreateQR();
    public static CreateQR getInstance() {
        return ourInstance;
    }

    private CreateQR(){

    }

    public CreateQR(String qrText,OutputStream outputStream) throws IOException, WriterException {

        this.qrCodeText = qrText;
        this.size = size=125;
        this.fileType = "png";
        this.outStream = outputStream;
    }

    public String getQrCodeText() { return qrCodeText; }

    public void setQrCodeText(String qrCodeText) { this.qrCodeText = qrCodeText; }

    public int getSize() { return size; }

    public void setSize(int size) { this.size = size; }

    public String getFileType() { return fileType; }

    public void setFileType(String fileType) { this.fileType = fileType; }

    public OutputStream getOutStream() { return outStream; }

    @Override
    public String toString() {
        return "Engine{" +
                ", qrcodetext='" + qrCodeText + '\'' +
                ", filetype=" + fileType +
                '}';
    }

    void createQRImage()
            throws WriterException, IOException {

        Hashtable<EncodeHintType, ErrorCorrectionLevel> hintMap = new Hashtable();
        hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
        QRCodeWriter qrCodeWriter = new QRCodeWriter();
        BitMatrix byteMatrix = qrCodeWriter.encode(qrCodeText, BarcodeFormat.QR_CODE, size, size, hintMap);

        int matrixWidth = byteMatrix.getWidth();
        BufferedImage image = new BufferedImage(matrixWidth, matrixWidth, BufferedImage.TYPE_INT_RGB);
        image.createGraphics();
        Graphics2D graphics = (Graphics2D) image.getGraphics();
        graphics.setColor(Color.white);
        graphics.fillRect(0, 0, matrixWidth, matrixWidth);

        graphics.setColor(Color.blue);
        for (int i = 0; i < matrixWidth; i++) {
            for (int j = 0; j < matrixWidth; j++) {
                if (byteMatrix.get(i, j)) {
                    graphics.fillRect(i, j, 1, 1);
                }
            }
        }
        ImageIO.write(image,fileType,outStream);

    }
}
