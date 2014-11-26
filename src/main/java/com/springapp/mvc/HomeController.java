package com.springapp.mvc;

import java.util.List;

import com.springapp.mvc.PersonDAO;
import com.springapp.mvc.PersonDAOImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

    @Autowired
    private PersonDAO personDAO;

    @RequestMapping(value="/home")
    public ModelAndView home() {

        Person person = new Person();
        person.setName("Pankhuri");
        person.setCountry("India");

        personDAO.save(person);

        List<Person> personList = personDAO.list();
        ModelAndView model = new ModelAndView("home");
        model.addObject("personList", personList);
        return model;
    }

}