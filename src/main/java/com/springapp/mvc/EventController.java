package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;

import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

import java.io.File;
import java.io.StringReader;
import java.lang.reflect.Array;
import java.util.ArrayList;

@Controller
public class EventController {

    @RequestMapping(value="/event", method=RequestMethod.GET)
    public ModelAndView event() {
        return new ModelAndView("event", "command", new Event());
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