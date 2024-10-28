package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


import com.bean.Orders;
import com.pojo.Orderss;


@Mapper
@Repository("ordersDao")
public interface OrdersDao {
    public int addOrders(Orders orders);
	public int deleteOrdersByID(int oid);
	public List<Orderss> selectOrdersByPid(int pid);
	public int UpdateOrdersByOoid(String ooid);
	public int UpdateOrdersByOoid1(String ooid);
	
}
