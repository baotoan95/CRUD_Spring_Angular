package com.btit95.repositories;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.btit95.entities.Student;

@Repository("studentRepository")
public class StudentRepositoryImpl implements IStudentRepository {
    @Autowired
    private MongoTemplate mongoTemplate;
    private static final String COLLECTION = "students";

    public List<Student> getAll() {
	return this.mongoTemplate.findAll(Student.class, COLLECTION);
    }

    public Student findById(String id) {
	Query query = new Query(Criteria.where("id").is(id));
	return this.mongoTemplate.findOne(query, Student.class, COLLECTION);
    }

    public void delete(String id) {
	Query query = new Query(Criteria.where("id").is(id));
	this.mongoTemplate.remove(query, Student.class, COLLECTION);
    }

    public void update(Student student) {
	this.mongoTemplate.save(student, COLLECTION);
    }

    public void insert(Student student) {
	this.mongoTemplate.insert(student, COLLECTION);
    }

}
