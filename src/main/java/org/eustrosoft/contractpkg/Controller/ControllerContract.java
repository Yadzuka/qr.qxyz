package org.eustrosoft.contractpkg.Controller;

import org.eustrosoft.contractpkg.Model.Contract;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/*
    Contract controller to manage contract date
 */
public class ControllerContract {

    public ArrayList<Contract> contracts;
    Contract st = new Contract();

    BufferedReader reader;

    public ControllerContract() {
        contracts = new ArrayList<>();
        InitializeCollection();
       /* for(Contract c : contracts)
            System.out.println(c.getVector());*/
    }

    public Contract getContract(int id){
        return contracts.get(id);
    }
    public void setContracts(Contract newContract){
        contracts.add(newContract);
    }
    public void InitializeCollection() {
        try {
            reader = new BufferedReader(new FileReader("E:\\AllProjects\\Java_projects\\Sources\\Java_product_projects\\" +
                    "qr.qxyz\\db\\members\\EXAMPLESD\\0100D\\master.list.csv"));
            String buffer;
            int index = 0;
            while ((buffer = reader.readLine()) != null) {
                if (buffer.startsWith("#"))
                    continue;
                // All is ok!
                System.out.println(buffer);
                st = new Contract(buffer.split(";"));
                // Added null pointer (??) WUT
                contracts.add(st);
                System.out.println(st.getZOID());
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

}
