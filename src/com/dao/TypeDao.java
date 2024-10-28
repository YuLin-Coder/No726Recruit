package com.dao;
import java.util.List;
import com.bean.Type;
public interface TypeDao {
	int admininserttype(Type type);
	List<Type> adminselecttype();
	int admindeletetype(Type type);
}
