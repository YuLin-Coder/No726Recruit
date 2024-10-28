package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bean.Orders;
import com.bean.Companys;
import com.bean.OrderRecord;
import com.services.OrderRecordServices;
import com.services.OrdersServices;
@Controller
public class OrderRecordController {
	@Autowired
	private OrderRecordServices orderRecordServices;
	
	
	
	@RequestMapping("/deleteOrderRecordByID")
	public String deleteOrderRecordByID(int oid,Model model,HttpSession session) {
		
		Companys Companys=(Companys) session.getAttribute("Companys");
		if(Companys==null) {
			return "companys/needLogin";
		}
		return orderRecordServices.deleteOrderRecordByID(oid, model,Companys.getCid());
	}
	
	@RequestMapping("/selectAllOrderRecord")
	public String selectAllOrderRecord(Model model,HttpSession session) {
		Companys Companys=(Companys) session.getAttribute("Companys");
		if(Companys==null) {
			return "companys/needLogin";
		}
		return orderRecordServices.selectAllOrderRecord(model,Companys.getCid());
	}
	@RequestMapping("/selectAllOrderRecord1")
	public String selectAllOrderRecord1(Model model,HttpSession session) {
		Companys Companys=(Companys) session.getAttribute("Companys");
		if(Companys==null) {
			return "companys/needLogin";
		}
		return orderRecordServices.selectAllOrderRecord1(model,Companys.getCid());
	}
	@RequestMapping("/updateOrderRecordByOoid")
	public String updateOrderRecordByOoid(String ooid,Model model) {
		
		return orderRecordServices.updateOrderRecordByOoid(ooid, model);
	}
	@RequestMapping("/updateOrderRecordByOoid1")
	public String updateOrderRecordByOoid1(String ooid,Model model) {
		
		return orderRecordServices.updateOrderRecordByOoid1(ooid, model);
	}
	
	
	
}
