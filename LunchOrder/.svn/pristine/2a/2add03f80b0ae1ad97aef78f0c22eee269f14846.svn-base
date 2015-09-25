package com.bootcamp.lunch.service;

import java.util.List;

import com.bootcamp.lunch.dao.LunchOrderDao;
import com.bootcamp.lunch.model.Chipotle;
import com.bootcamp.lunch.model.WhichWich;

public class LunchOrderServiceImpl implements LunchOrderService{

	LunchOrderDao lunchOrderDao;
	
	public void setLunchOrderDao(LunchOrderDao lunchOrderDao) {
		this.lunchOrderDao = lunchOrderDao;
	}
	
	@Override
	public Chipotle orderChipotle(Chipotle chipotle) {
		return lunchOrderDao.orderChipotle(chipotle);
	}

	@Override
	public WhichWich orderWhichWich(WhichWich whichWich) {
		return lunchOrderDao.orderWhichWich(whichWich);
	}

	@Override
	public List<Chipotle> getAllChipotleOrder() {
		return lunchOrderDao.getAllChipotleOrder();
	}

	@Override
	public List<WhichWich> getAllWhichWichOrder() {
		return lunchOrderDao.getAllWhichWichOrder();
	}

}
