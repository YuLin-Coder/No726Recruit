package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.bean.Companys;
@Mapper
@Repository("CompanysDao")
public interface CompanysDao {
    public int addCompanys(Companys Companys);
    public List<Companys> selectAllCompanys();
	public int deleteCompanysByID(int cid);
	public Companys companysLogin (Companys Companys);
	public int updateCompanysByID(Companys Companys);
	public int updateCompanysByID1(int cid);
	
}
