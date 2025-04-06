package utility;

import entity.Book;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	public static SessionFactory getSessionFactory() {
		//Read the Configuration file
		Configuration configuration = new Configuration();
		configuration.configure("hibernate.cfg.xml");
		configuration.addAnnotatedClass(Book.class);

		//Create SessionFactory Object from configuration
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		return sessionFactory;
	}
}