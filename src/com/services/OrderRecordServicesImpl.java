package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.bean.OrderRecord;
import com.dao.OrderRecordDao;
import com.dao.OrdersDao;
import com.pojo.OrderRecords;
@Service("OrderRecordservices")
public class OrderRecordServicesImpl implements OrderRecordServices{
    @Autowired
	private OrderRecordDao orderRecordDao;
    @Autowired
	private OrdersDao ordersDao;

	

	@Override
	public String selectAllOrderRecord(Model model,int cid) {
		// TODO Auto-generated method stub
				List<OrderRecords> orderRecord=orderRecordDao.selectAllOrderRecord(cid);
				model.addAttribute("orderRecord", orderRecord);
				return "companys/showOrderRecord";
	}
	@Override
	public String selectAllOrderRecord1(Model model,int cid) {
		// TODO Auto-generated method stub
				List<OrderRecords> orderRecord=orderRecordDao.selectAllOrderRecord1(cid);
				model.addAttribute("orderRecord", orderRecord);
				return "companys/showOrderRecord1";
	}
	

	@Override
	public String deleteOrderRecordByID(int oid,Model model,int  cid) {
		// TODO Auto-generated method stub
		orderRecordDao.deleteOrderRecordByID(oid);
		List<OrderRecords> orderRecord=orderRecordDao.selectAllOrderRecord1(cid);
		model.addAttribute("orderRecord", orderRecord);
	    return "companys/showOrderRecord1";
	}
	@Override
	public String updateOrderRecordByOoid(String ooid,Model model) {
		// TODO Auto-generated method stub
		orderRecordDao.updateOrderRecordByOoid(ooid);
		ordersDao.UpdateOrdersByOoid(ooid);
	    return "companys/success";
	}
	@Override
	public String updateOrderRecordByOoid1(String ooid,Model model) {
		// TODO Auto-generated method stub
		orderRecordDao.updateOrderRecordByOoid1(ooid);
		ordersDao.UpdateOrdersByOoid1(ooid);
	    return "companys/success";
	}

	
	

}
