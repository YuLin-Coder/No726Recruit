package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.bean.Purchasers;
@Mapper
@Repository("purchasersDao")
public interface PurchasersDao {
    public int addPurchasers(Purchasers purchasers);
    public List<Purchasers> selectAllPurchasers();
	public int deletePurchasersByID(int pid);
	public Purchasers purchasersLogin (Purchasers purchasers);
	public int updatePurchasersByID(Purchasers purchasers);
	public int updatePurchasersByID1(int pid);
	
}
