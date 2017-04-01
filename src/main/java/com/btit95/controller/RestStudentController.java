package com.btit95.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.btit95.entities.Student;
import com.btit95.services.IStudentService;

@RestController
@RequestMapping("/student")
public class RestStudentController {
    @Autowired
    private IStudentService studentService;
    
    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<Student>> students() {
	List<Student> students = studentService.getAll(); 
	if(students.isEmpty()) {
	    return new ResponseEntity<List<Student>>(HttpStatus.NO_CONTENT);
	}
	return new ResponseEntity<List<Student>>(students, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ResponseEntity<Void> createStudent(@RequestBody Student student, UriComponentsBuilder ucBuilder) {
	if(!studentService.isExist(student)) {
	    studentService.insert(student);
	    HttpHeaders headers = new HttpHeaders();
	    headers.setLocation(ucBuilder.path("/student/{id}").buildAndExpand(student.getId()).toUri());
	    return new ResponseEntity<Void>(HttpStatus.CREATED);
	}
	return new ResponseEntity<Void>(HttpStatus.CONFLICT);
    }
    
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Void> deleteStudent(@PathVariable("id") String id) {
	Student student = studentService.findById(id);
	if(null != student) {
	    studentService.delete(id);
	    return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
	}
	return new ResponseEntity<Void>(HttpStatus.NOT_FOUND);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<Student> getStudent(@PathVariable("id") String id) {
	Student student = studentService.findById(id);
	if(null != student) {
	    return new ResponseEntity<Student>(student, HttpStatus.OK);
	}
	return new ResponseEntity<Student>(HttpStatus.NOT_FOUND);
    }
    
    @RequestMapping(value = "/update/{id}", method = RequestMethod.PUT)
    public ResponseEntity<Student> updateStudent(@PathVariable("id") String id, @RequestBody Student student) {
	Student currentStudent = studentService.findById(id);
	if(null != currentStudent) {
	    currentStudent.setName(student.getName());
	    currentStudent.setAge(student.getAge());
	    currentStudent.setAddress(student.getAddress());
	    studentService.update(currentStudent);
	    return new ResponseEntity<Student>(currentStudent, HttpStatus.OK);
	}
	return new ResponseEntity<Student>(HttpStatus.NOT_FOUND);
    }
}
