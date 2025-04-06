package dao;

import entity.Book;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.SelectionQuery;
import utility.HibernateUtil;

import java.util.List;

public class BookDao {
    public static void saveOrUpdateBook(Book book) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            // Use saveOrUpdate to handle both new and existing books
            session.saveOrUpdate(book);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            throw e;
        } finally {
            session.close();
        }
    }

    public static List<Book> listBooks() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        SelectionQuery<Book> query = session.createQuery("from Book", Book.class);
        List<Book> bookList = query.list();
        return bookList;
    }

    public static boolean deleteBook(int bookId) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        Book book = session.get(Book.class, bookId);
        if (book != null) {
            session.delete(book);
            tx.commit();
            session.close();
            return true;
        } else {
            return false;
        }
    }

}
