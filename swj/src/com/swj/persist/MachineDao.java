package com.swj.persist;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.swj.base.HibernateSessionFactory;
import com.swj.domain.Machine;

public class MachineDao {
	
	public boolean insert(Machine machine){
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = null;
		tx = session.beginTransaction();
		session.save(machine);
		tx.commit();
		return true;
	}
	
	public boolean save(Machine machine){
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = null;
		tx = session.beginTransaction();
		//Machine old = (Machine)session.get(Machine.class,machine.getId());
		
		session.update(machine);
		tx.commit();
		return true;
	}
	
	public boolean delete(Machine machine){
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = null;
		tx = session.beginTransaction();
		session.delete(machine);
		tx.commit();
		return true;
	}
	
	
	public List<Machine> select(){
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = null;
		tx = session.beginTransaction();
		Query query = session.createQuery("from Machine ");
		List<Machine> machineList = query.list();
		tx.commit();
		return machineList;
	}
	
}
