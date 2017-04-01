package com.btit95.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class AppController {
    @RequestMapping(method = RequestMethod.GET)
    public String index() {
	return "index";
    }
    
    @RequestMapping(value = {"/edit", "/create"}, method = RequestMethod.GET)
    public String student() {
	return "student";
    }
    
    @RequestMapping(value = "/students", method = RequestMethod.GET)
    public String students() {
	return "students";
    }
}
