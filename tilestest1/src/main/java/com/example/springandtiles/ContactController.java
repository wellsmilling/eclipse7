package com.example.springandtiles;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.examples.entities.Contact;
 
@Controller
@SessionAttributes
public class ContactController {
 
    @RequestMapping(value = "/addContact", method = RequestMethod.POST)
    public String addContact(@ModelAttribute("contact")
                            Contact contact, BindingResult result) {
         
        System.out.println("First Name:" + contact.getFirstname() + 
                    "Last Name:" + contact.getLastname());
         
        return "redirect:form";
    }
     
/*    @RequestMapping("/contacts")
    public ModelAndView showContacts() {
         
        return new ModelAndView("contact", "command", new Contact());
    }*/
}