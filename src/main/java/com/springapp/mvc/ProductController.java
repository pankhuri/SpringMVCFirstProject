package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by pankhurikaushik on 05/12/14.
 */

@Controller
public class ProductController {

    @RequestMapping(value="/product/create", method = RequestMethod.GET)
    public String list(ModelMap model) {
        return "product/create";
    }
}
