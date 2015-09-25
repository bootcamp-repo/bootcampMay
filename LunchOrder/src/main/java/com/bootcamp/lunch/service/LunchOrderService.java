package com.bootcamp.lunch.service;

import java.util.List;

import com.bootcamp.lunch.model.Chipotle;
import com.bootcamp.lunch.model.WhichWich;

public interface LunchOrderService {

	Chipotle orderChipotle(Chipotle chipotle);
	WhichWich orderWhichWich(WhichWich whichWich);
	List<Chipotle> getAllChipotleOrder();
	List<WhichWich> getAllWhichWichOrder();
}
