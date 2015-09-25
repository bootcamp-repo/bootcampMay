package com.bootcamp.lunch.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.bootcamp.lunch.model.Chipotle;
import com.bootcamp.lunch.model.WhichWich;
import com.bootcamp.lunch.util.HibernateUtil;

public class LunchOrderDaoImpl implements LunchOrderDao {

	private String errMsg;

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	@Override
	public Chipotle orderChipotle(Chipotle chipotle) {
		Session session = null;
		try {

			session = HibernateUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			session.save(chipotle);
			session.getTransaction().commit();
		} catch (Exception ex) {
			setErrMsg(ex.getMessage() + ". Please Try Again!");
			System.err.println(ex.getMessage());
			ex.printStackTrace();
		} finally {
			if (session.isOpen()) {
				session.close();
			}
		}
		return chipotle;
	}

	@Override
	public WhichWich orderWhichWich(WhichWich whichWich) {

		Session session = null;
		try {

			session = HibernateUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			Integer a = (Integer) session.save(whichWich);
			if (a > 0) {
				session.getTransaction().commit();
			}
		} catch (Exception ex) {
			setErrMsg(ex.getMessage() + ". Please Try Again!");
			System.err.println(errMsg);
			ex.printStackTrace();
		} finally {
			if (session.isOpen()) {
				session.close();
			}
		}
		return whichWich;
	}

	@Override
	public List<Chipotle> getAllChipotleOrder() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Chipotle> listOfChipOrder = new ArrayList<Chipotle>();
		Query query = session.createQuery("from Chipotle");
		listOfChipOrder = (List<Chipotle>) query.list();
		return listOfChipOrder;
	}

	@Override
	public List<WhichWich> getAllWhichWichOrder() {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<WhichWich> listOfWhichOrder = new ArrayList<WhichWich>();
		Query query = session.createQuery("from WhichWich");
		listOfWhichOrder = (List<WhichWich>) query.list();

		return listOfWhichOrder;
	}

}
