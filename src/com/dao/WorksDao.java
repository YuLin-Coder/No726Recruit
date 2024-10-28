package com.dao;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.bean.Works;
@Mapper
@Repository("WorksDao")
public interface WorksDao {
    public int addWorks(Works Works);
    public List<Works> selectAllWorks(int cid);
	public int deleteWorksByID(int wid);
	public Works selectWorksByID(int wid);
	public int updateWorksCounts1(int wid);
	 public int updateWorks(Works Works);
	 public List<Works> selectAllWorks1();
	 public Works selectWorksByID1(int wid);
	 public List<Works> selectWorksByTname(String tname);
	 public List<Works> selectWorksByWname(String sname);
	 public List<Works> selectAllWorksByPage(Map<String, Object> map);
		
	
}
