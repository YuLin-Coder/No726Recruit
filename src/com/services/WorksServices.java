package com.services;

import org.springframework.ui.Model;

import com.bean.Works;


public interface WorksServices {

   public String addWorks(Works Works);
   public String selectAllWorks(Model model,Integer pageCur,int cid);
   public String deleteWorksByID(int wid,int cid,Model model);
   public String selectWorksByID(int wid,Model model);
   public String selectAllWorks1(Model model);
   public String selectWorksByID1(int wid,Model model,int pid);
   public String updateWorks(Works Works);
   public String selectWorksByTname(String name, Model model);
   public String selectWorksByWname(String wname, Model model);
}
