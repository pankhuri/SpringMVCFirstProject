package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by pankhurikaushik on 03/12/14.
 */

@Controller
public class AccountController {

    @RequestMapping(value="/account/dashboard", method=RequestMethod.GET)
    public String dashboard() {
        return "dashboard";
    }

}
