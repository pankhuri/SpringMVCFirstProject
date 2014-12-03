package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;

import org.xml.sax.InputSource;

import java.io.StringReader;
import java.util.ArrayList;

@Controller
public class EventController {

    @RequestMapping(value="/event/create", method=RequestMethod.GET)
    public ModelAndView event() {
        return new ModelAndView("event/create", "command", new Event());
    }

    @RequestMapping(value="/event/list", method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
        return "event/list";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String addStudent(Event event,
                             ModelMap model, HttpServletRequest request,
                             HttpServletResponse response) {
        model.addAttribute("name", event.getName());
        model.addAttribute("xmlFormat", event.getXmlFormat());
        model.addAttribute("leafNodes", findLeafNodes(event.getXmlFormat()));

     return "result";
    }

    private ArrayList findLeafNodes(String xmlData){
        ArrayList leafNodes = new ArrayList();
        // xml parsing
        try {
            final Document doc = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(xmlData)));
                   // "/Users/pankhurikaushik/IdeaProjects/SpringMVCProject/format.xml");
            final XPathExpression xpath = XPathFactory.newInstance().newXPath().compile("//*[count(./*) = 0]");
            final NodeList nodeList = (NodeList) xpath.evaluate(doc, XPathConstants.NODESET);
            for(int i = 0; i < nodeList.getLength(); i++) {
                final Element el = (Element) nodeList.item(i);
                leafNodes.add(i, el.getNodeName() + " : " + el.getTextContent());
                System.out.println(el.getNodeName() + " : " + el.getTextContent());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return leafNodes;
    }
}