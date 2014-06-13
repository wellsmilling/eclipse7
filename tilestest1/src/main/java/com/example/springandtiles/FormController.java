package com.example.springandtiles;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FormController {
	 private static final Logger logger = LoggerFactory.getLogger(FormController.class);
     
	    /**
	     * Simply selects the home view to render by returning its name.
	     */
	    @RequestMapping(value = "/form", method = RequestMethod.GET)
	    public String form(Model model) {
	        logger.info("Welcome form submit!!!!");

	         
	        return "form";
	    }

}
