package org.eustrosoft.contractpkg.Controller;

import org.eustrosoft.contractpkg.Model.Contract;

import java.io.IOException;
import java.util.ArrayList;

/*
    Contract controller to manage contract date
 */
public class ControllerContract {

    private ArrayList<Contract> contracts;
    private Contract st = Contract.InitDBFromFile();

    public ControllerContract() {
        initContactList();
    }

    private void initContactList(){
        try{
            setContracts(st.fillProductPropertiesInStart());
        }catch (IOException ex){
            ex.printStackTrace();
        }
    }

    public void deleteRecord(int id){
        getContracts().remove(id);
    }
    public Contract getContract(int id){
        return getContracts().get(id);
    }
    public void setContracts(Contract newContract){
        getContracts().add(newContract);
    }

    public ArrayList<Contract> getContracts() {
        return contracts;
    }

    public void setContracts(ArrayList<Contract> contracts) {
        this.contracts = contracts;
    }
}
