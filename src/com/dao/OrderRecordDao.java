package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.bean.OrderRecord;
import com.pojo.OrderRecords;


@Mapper
@Repository("orderRecordDao")
public interface OrderRecordDao {
    public int addOrderRecord(OrderRecord orderRecord);
	public int deleteOrderRecordByID(int oid);
	public List<OrderRecords> selectAllOrderRecord(int cid);
	public List<OrderRecords> selectAllOrderRecord1(int cid);
	public int updateOrderRecordByOoid(String ooid);
	public int updateOrderRecordByOoid1(String ooid);
	
}
