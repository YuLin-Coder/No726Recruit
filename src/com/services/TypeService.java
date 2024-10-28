package com.services;
import org.springframework.ui.Model;
import com.bean.Type;
public interface TypeService {

	String admininserttype(Type type, Model model);

	String selecttypetoadd(Model model);

	String getType(Model model);

	String admindeletetype(Type type, Model model);

	String indexgetType(Model model);

}
