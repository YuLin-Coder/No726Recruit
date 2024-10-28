package com.services;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.bean.Orders;
import com.bean.OrderRecord;
import com.bean.Orders;
import com.bean.Purchasers;
import com.dao.OrderRecordDao;
import com.dao.OrdersDao;
import com.pojo.Orderss;


@Service("OrdersServices")
public class OrdersServicesImpl implements OrdersServices{
    @Autowired
	private OrdersDao ordersDao;
    @Autowired
   	private OrderRecordDao orderRecordDao;
    public String addOrders(Orders Orders,HttpSession session,OrderRecord OrderRecord) {
		// TODO Auto-generated method stub
    	Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	String roid=sdf.format(d)+"";
		Purchasers purchasers=(Purchasers) session.getAttribute("Purchasers");
		if(purchasers==null) {
			return "purchasers/needLogin";
		}else {
			OrderRecord.setRid1(Orders.getRid());
			OrderRecord.setOoid(roid);
			OrderRecord.setPid1(purchasers.getPid());
			orderRecordDao.addOrderRecord(OrderRecord);
			Orders.setOoid(roid);
			Orders.setPid(purchasers.getPid());
			
			
		int t=ordersDao.addOrders(Orders);
		if(t>0) {
			return "admin/success";
		}else {
			return "admin/error";
		}
	}
		}
		

	@Override
	public String selectOrdersByPid(Model model,HttpSession session) {
		// TODO Auto-generated method stub
		Purchasers purchasers=(Purchasers) session.getAttribute("Purchasers");
		if(purchasers==null) {
			return "purchasers/needLogin";
		}else {
			List<Orderss>  orders=ordersDao.selectOrdersByPid(purchasers.getPid());
		model.addAttribute("orders", orders);
		return "purchasers/showOrders" ;
	}}
	@Override
	public String deleteOrdersByID(int oid,Model model,HttpSession session) {
		// TODO Auto-generated method stub
		ordersDao.deleteOrdersByID(oid);
		Purchasers purchasers=(Purchasers) session.getAttribute("Purchasers");
		if(purchasers==null) {
			return "purchasers/needLogin";
		}else {
			List<Orderss>  orders=ordersDao.selectOrdersByPid(purchasers.getPid());
		model.addAttribute("orders", orders);
	    return "purchasers/showOrders";
	}
		

	
	}

	

}
