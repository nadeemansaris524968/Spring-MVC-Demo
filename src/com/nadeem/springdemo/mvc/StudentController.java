package com.nadeem.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping("/showForm")
	public String showForm(Model theModel){
		
		// create the student object
		Student theStudent = new Student();
		
		// add student to model attribute. This model will be passed
		// on to the form where the Spring Form with it's special tags
		// will inject the values in to the student object that was in the
		// model attribute.
		theModel.addAttribute("student", theStudent);
		
		return "student-form";
	}
	
	@RequestMapping("processForm")
	public String processForm(@ModelAttribute("student") Student theStudent){
		
		System.out.println("Student: "+theStudent.getFirstName()+" "+theStudent.getLastName()+" from "+theStudent.getCountry());
		return "student-confirmation";
	}
}
