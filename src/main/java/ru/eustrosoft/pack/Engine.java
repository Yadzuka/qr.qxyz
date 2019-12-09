package ru.eustrosoft.pack;

import javax.imageio.ImageIO;
import java.awt.*;
import java.io.FileOutputStream;

public class Engine {
    private String name;
    private String serial;

    private static Engine ourInstance = new Engine();
    public static Engine getInstance() {
        return ourInstance;
    }

    private Engine() {
    }

    public Engine(String name, String serial) {
        this.name = name;
        this.serial = serial;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }


    @Override
    public String toString() {
        return "Engine{" +
                ", name='" + name + '\'' +
                ", serial=" + serial +
                '}';
    }
}
