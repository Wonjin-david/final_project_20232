package com.crud.patient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientService {
    @Autowired
    PatientDAO patientDAO;

    public List<PatientVO> getPatientList(){
        return patientDAO.getPatientList();
    }
    public int insertPatient(PatientVO vo){
        System.out.println("GI");
        return patientDAO.insertPatient(vo);
    }

    public int updatePatient(PatientVO vo){return patientDAO.updatePatient(vo);
    }
    public PatientVO getPatient(int id){
        return patientDAO.getPatient(id);
    }

    public int deletePatient(int id){
        return patientDAO.deletePatient(id);
    }
}