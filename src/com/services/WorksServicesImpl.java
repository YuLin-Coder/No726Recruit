package com.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bean.Resumes;
import com.bean.Type;
import com.bean.Works;
import com.dao.ResumesDao;
import com.dao.TypeDao;
import com.dao.WorksDao;

@Service("WorksServices")
public class WorksServicesImpl implements WorksServices{
    @Autowired
	private WorksDao WorksDao;
    @Autowired
   	private ResumesDao ResumesDao;
    @Autowired
    private TypeDao typeDao;
	@Override
	public String addWorks(Works Works) {
		int t=WorksDao.addWorks(Works);
		if(t>0) {
			return "companys/success";
		}else {
			return "companys/error";
		}
	}
	@Override
	public String updateWorks(Works Works) {
		// TODO Auto-generated method stub
		int t=WorksDao.updateWorks(Works);
		if(t>0) {
			return "companys/success";
		}else {
			return "companys/error";
		}
	}

	@Override
	public String selectAllWorks(Model model,Integer pageCur, int cid) {
		// TODO Auto-generated method stub
				List<Works> Works=WorksDao.selectAllWorks(cid);
				int temp = Works.size();
				model.addAttribute("totalCount", temp);
				int totalPage = 0;
				if (temp == 0) {
					totalPage = 0;//总页数
				} else {
					//返回大于或者等于指定表达式的最小整数
					totalPage = (int) Math.ceil((double) temp / 10);
				}
				if (pageCur == null) {
					pageCur = 1;
				}
				//分页查询
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("startIndex", (pageCur - 1) * 10);//起始位置
				map.put("perPageSize", 10);//每页10个
				map.put("cid", cid);
				Works = WorksDao.selectAllWorksByPage(map);
				model.addAttribute("Works", Works);
				model.addAttribute("totalPage", totalPage);
				model.addAttribute("pageCur", pageCur);
				return "companys/showWorks";
	}
	@Override
	public String selectWorksByID(int wid,Model model) {
		// TODO Auto-generated method stub
		Works  Works=WorksDao.selectWorksByID(wid);
		model.addAttribute("Works", Works);
		List<Type>list=typeDao.adminselecttype();
		model.addAttribute("typeList", list);
		return "companys/updateWorks";
	}
	@Override
	public String deleteWorksByID(int wid,int cid,Model model) {
		// TODO Auto-generated method stub
		WorksDao.deleteWorksByID(wid);
		List<Works> Works=WorksDao.selectAllWorks(cid);
		model.addAttribute("Works", Works);
		System.out.println("--------------");
	   return "companys/showWorks";
	}
	
	
	
	
	
	
	@Override
	public String selectAllWorks1(Model model) {
		// TODO Auto-generated method stub
				List<Works> Works=WorksDao.selectAllWorks1();
				model.addAttribute("Works", Works);
				return "purchasers/iframe";
	}
	@Override
	public String selectWorksByID1(int wid,Model model,int pid) {
		// TODO Auto-generated method stub
		Works  Works=WorksDao.selectWorksByID1(wid);
		model.addAttribute("Works", Works);
		List<Resumes> Resumes=ResumesDao.selectResumesByPid(pid);
		model.addAttribute("Resumes", Resumes);
		return "purchasers/worksDetails";
	}
	
	
	@Override
	public String selectWorksByWname(String wname, Model model) {
		// TODO Auto-generated method stub
		List<Works>  Works=WorksDao.selectWorksByWname(wname);
		model.addAttribute("Works", Works);
		
		return "purchasers/iframe";
	}
	@Override
	public String selectWorksByTname(String tname, Model model) {
		// TODO Auto-generated method stub
		List<Works>  Works=WorksDao.selectWorksByTname(tname);
		model.addAttribute("Works", Works);
		
		return "purchasers/iframe";
	}

}
