package com.nadeem.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {

	private String coursePrefix;
	
	@Override
	public void initialize(CourseCode theCourseCode) {
		
		coursePrefix = theCourseCode.value();
	}

	@Override
	public boolean isValid(String userInput, ConstraintValidatorContext arg1) {
		boolean result = userInput.startsWith(coursePrefix);
		
		if (result){
			return true;
		}
		return false;
	}

}
