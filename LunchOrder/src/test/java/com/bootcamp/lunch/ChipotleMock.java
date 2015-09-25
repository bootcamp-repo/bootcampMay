package com.bootcamp.lunch;

import org.junit.Before;
import org.junit.Test;
import org.mockito.invocation.InvocationOnMock;
import org.mockito.stubbing.Answer;

import static org.mockito.Mockito.mock;
import static org.junit.Assert.assertNull;
import static org.mockito.Mockito.any;
import static org.mockito.Mockito.when;
import com.bootcamp.lunch.dao.LunchOrderDao;
import com.bootcamp.lunch.model.Chipotle;
import com.bootcamp.lunch.service.LunchOrderService;
import com.bootcamp.lunch.service.LunchOrderServiceImpl;

public class ChipotleMock {
	
	private LunchOrderDao lunchDao;
	private LunchOrderService lunchService;
	
	
	@Before
	public void setUp(){
		lunchDao = mock(LunchOrderDao.class);
		lunchService = new LunchOrderServiceImpl();
	}
	
	@Test
	public void testOrderChipotle(){
		Chipotle chipotle = new Chipotle();
		chipotle.setMeat("chicken");
		chipotle.setName("Sweekar");
		chipotle.setRice("Brown");
		chipotle.setToppings("XXXX");
		
		when(lunchDao.orderChipotle(any(Chipotle.class))).thenAnswer(new Answer<Chipotle>() {

			@Override
			public Chipotle answer(InvocationOnMock invocation)throws Throwable {
				
				Chipotle chipotle = (Chipotle) invocation.getArguments()[0];
				chipotle.setId(10);
				return chipotle;
			}
		});
		
		assertNull(chipotle.getId());
		
//		lunchDao = lunchService.orderChipotle(chipotle);
	}

}
