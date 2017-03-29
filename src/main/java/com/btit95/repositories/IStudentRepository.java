package com.btit95.repositories;

import java.util.List;

import com.btit95.entities.Student;

public interface IStudentRepository {
    public List<Student> getAll();

    public Student findById(String id);

    public void delete(String id);

    public void update(Student student);

    public void insert(Student student);
}
