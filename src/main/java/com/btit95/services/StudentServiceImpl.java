package com.btit95.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.btit95.entities.Student;
import com.btit95.repositories.IStudentRepository;

@Service("studentService")
public class StudentServiceImpl implements IStudentService {
    @Autowired
    private IStudentRepository studentRepository;

    public List<Student> getAll() {
	List<Student> students = studentRepository.getAll();
	return null == students ? new ArrayList<Student>() : students;
    }

    public Student findById(String id) {
	return studentRepository.findById(id);
    }

    public void delete(String id) {
	studentRepository.delete(id);
    }

    public void update(Student student) {
	if(null != student) {
	    studentRepository.update(student);
	}
    }

    public void insert(Student student) {
	if(null != student) {
	    studentRepository.insert(student);
	}
    }

    public boolean isExist(Student student) {
	return findById(student.getId()) != null;
    }

}
