package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.bean.Resumes;
@Mapper
@Repository("ResumesDao")
public interface ResumesDao {
    public int addResumes(Resumes Resumes);
    public List<Resumes> selectResumesByPid(int pid);
	public int deleteResumesByID(int rid);
	 public Resumes selectResumesByRid(int rid);
	
	
}
