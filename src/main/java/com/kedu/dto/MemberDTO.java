package com.kedu.dto;

import java.util.Date;

public class MemberDTO {

    private String emp_id;       // ���̵�
    private String emp_pw;       // ��й�ȣ
    private String emp_name;     // �̸�
    private String emp_rrn;      // �ֹι�ȣ
    private String emp_phone;    // ����ó
    private String emp_email;    // �̸���
    private String postcode;     // �����ȣ
    private String address1;     // �⺻�ּ�
    private String address2;     // ���ּ�
    private int emp_deptId;      // �Ҽ� �μ� ID
    private Date hire_date;      // �Ի��� (java.util.Date)

    // --- Getter/Setter ---
    public String getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(String emp_id) {
        this.emp_id = emp_id;
    }

    public String getEmp_pw() {
        return emp_pw;
    }

    public void setEmp_pw(String emp_pw) {
        this.emp_pw = emp_pw;
    }

    public String getEmp_name() {
        return emp_name;
    }

    public void setEmp_name(String emp_name) {
        this.emp_name = emp_name;
    }

    public String getEmp_rrn() {
        return emp_rrn;
    }

    public void setEmp_rrn(String emp_rrn) {
        this.emp_rrn = emp_rrn;
    }

    public String getEmp_phone() {
        return emp_phone;
    }

    public void setEmp_phone(String emp_phone) {
        this.emp_phone = emp_phone;
    }

    public String getEmp_email() {
        return emp_email;
    }

    public void setEmp_email(String emp_email) {
        this.emp_email = emp_email;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public int getEmp_deptId() {
        return emp_deptId;
    }

    public void setEmp_deptId(int emp_deptId) {
        this.emp_deptId = emp_deptId;
    }

    public Date getHire_date() {
        return hire_date;
    }

    public void setHire_date(Date hire_date) {
        this.hire_date = hire_date;
    }
}
