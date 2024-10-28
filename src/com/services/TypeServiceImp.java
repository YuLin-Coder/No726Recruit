package com.services;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.bean.Type;
import com.dao.TypeDao;
@Service("typeService")
public class TypeServiceImp implements TypeService {
    @Autowired
    private TypeDao typeDao;
    //上传分类
	@Override
	public String admininserttype(Type type, Model model) {
		// TODO Auto-generated method stub
		int result=typeDao.admininserttype(type);
		if(result<0) {
			return "admin/error";
		}else{
			List<Type>list=typeDao.adminselecttype();
			model.addAttribute("typeList", list);
			return "admin/success";
		}
	}
	//删除分类
	@Override
	public String admindeletetype(Type type, Model model) {
		// TODO Auto-generated method stub
		int result=typeDao.admindeletetype(type);
		if(result<0) {
			return "admin/error";
		}else{
			List<Type>list=typeDao.adminselecttype();
			model.addAttribute("typeList", list);
			return "admin/showType";
		}
	}
	//查询全部分类
	@Override
	public String getType(Model model) {
		List<Type>list=typeDao.adminselecttype();
		model.addAttribute("typeList", list);
		return "admin/showType";
	}
	@Override
	public String selecttypetoadd(Model model) {
		// TODO Auto-generated method stub
		List<Type>list=typeDao.adminselecttype();
		model.addAttribute("list", list);
		return "companys/addWorks";
	}
	@Override
	public String indexgetType(Model model) {
		// TODO Auto-generated method stub
		List<Type>list=typeDao.adminselecttype();
		model.addAttribute("typeList", list);
		return "purchasers/iframe1";
	}
}
