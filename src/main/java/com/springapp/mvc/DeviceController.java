package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by pankhurikaushik on 03/12/14.
 */
@Controller
public class DeviceController {

    @RequestMapping(value="/device/list", method = RequestMethod.GET)
    public String list(ModelMap model) {
        return "device/list";
    }

}
