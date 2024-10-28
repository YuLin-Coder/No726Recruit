package com.services;

import org.springframework.ui.Model;

import com.bean.OrderRecord;


public interface OrderRecordServices {

   
   public String selectAllOrderRecord(Model model,int cid);
   public String selectAllOrderRecord1(Model model,int cid);
   public String deleteOrderRecordByID(int oid,Model model,int  cid);
   public String updateOrderRecordByOoid(String ooid,Model model);
   public String updateOrderRecordByOoid1(String ooid,Model model);

   
}
