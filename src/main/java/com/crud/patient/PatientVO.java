package com.crud.patient;

import java.util.Date;

public class PatientVO {
    private int id;
    private String name;
    private String birth;
    private String gender;
    private String symptom;
    private String roomNum;
    private String hospDate;
    private String discDate;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getSymptom() {
        return symptom;
    }

    public void setSymptom(String symptom) {
        this.symptom = symptom;
    }

    public String getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(String roomNum) {
        this.roomNum = roomNum;
    }

    public String getHospDate() {
        return hospDate;
    }

    public void setHospDate(String hospDate) {
        this.hospDate = hospDate;
    }

    public String getDiscDate() {
        return discDate;
    }

    public void setDiscDate(String discDate) {
        this.discDate = discDate;
    }

}