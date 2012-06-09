package com.xjtu.domain;

import javax.persistence.*;


@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String name;

    private String university;


    private String phone;


    private String email;

    private String major;

    public String getPhone() {
        return phone;
    }



    public User(String name, String university, String phone, String email, String major) {

        this.name = name;
        this.university = university;
        this.phone = phone;
        this.email = email;
        this.major = major;

    }


    public String getName() {
        return name;
    }


    public String getUniversity() {
        return university;
    }


    public User() {
    }

    public User(String name, String university) {
        this.university = university;
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }


}
