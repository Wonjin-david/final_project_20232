package com.crud.patient;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class PatientDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertPatient(PatientVO vo){
        int result = sqlSession.insert("patient.insertPatient",vo);
        return result;
    }
    public int updatePatient(PatientVO vo){
        int result = sqlSession.update("patient.updatePatient",vo);
        return result;
    }
    public int deletePatient(int id){
        int result = sqlSession.delete("patient.deletePatient",id);
        return result;
    }
    class PatientRowMapper implements RowMapper<PatientVO>{
        @Override
        public PatientVO mapRow(ResultSet rs, int rowNum) throws SQLException{
            PatientVO vo = new PatientVO();
            vo.setId(rs.getInt("id"));
            vo.setName(rs.getString("name"));
            vo.setBirth(rs.getString("birth"));
            vo.setGender(rs.getString("gender"));
            vo.setSymptom(rs.getString("symptom"));
            vo.setRoomNum(rs.getString("roomNum"));
            vo.setHospDate(rs.getString("hospDate"));
            vo.setDiscDate(rs.getString("discDate"));
            return vo;
        }
    }
    public PatientVO getPatient(int id){
        PatientVO one = sqlSession.selectOne("patient.getPatient",id);
        return one;
    }
    public List<PatientVO> getPatientList(){
        List<PatientVO> list = sqlSession.selectList("patient.getPatientList");
        return list;
    }

}