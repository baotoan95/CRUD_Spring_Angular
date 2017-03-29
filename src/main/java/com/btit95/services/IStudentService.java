package com.btit95.services;

import java.util.List;

import com.btit95.entities.Student;

public interface IStudentService {
    public List<Student> getAll();

    public Student findById(String id);

    public void delete(String id);

    public void update(Student student);

    public void insert(Student student);
    
    public boolean isExist(Student student);
}
