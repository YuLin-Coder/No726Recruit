package com.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Companys;
import com.bean.Type;
import com.services.TypeService;
@Controller
public class TypeController {
	@Autowired
    private TypeService typeService;
	
	@RequestMapping("/admininserttype")
    public String admininserttype(Type type,Model model) {
    	return typeService.admininserttype(type,model);
	}
	
    @RequestMapping("/admindeletetype")
    public String admindeletetype(Type type,Model model) {
    	return typeService.admindeletetype(type,model);
	}
    
    @RequestMapping("/selecttypetoadd")
    public String selecttypetoadd(Model model,HttpSession session) {
    	Companys Companys=(Companys) session.getAttribute("Companys");
		if(Companys==null) {
			return "companys/needLogin";
		}
    	return typeService.selecttypetoadd(model);
	}
    @RequestMapping("/getType")
    public String getType(Model model) {
    	return typeService.getType(model);
	}
    @RequestMapping("/indexgetType")
    public String indexgetType(Model model) {
    	return typeService.indexgetType(model);
	}
}
