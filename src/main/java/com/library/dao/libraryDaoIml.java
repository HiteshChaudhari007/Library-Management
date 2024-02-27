package com.library.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.library.model.Book;

@Repository
public class libraryDaoIml implements libraryDao {

	@Autowired
	public SessionFactory factory;

	public List<Book> getBooks() {
		Session session = factory.openSession();
		Query querry = session.createQuery("from Book");
		List<Book> stulist = querry.getResultList();

		return stulist;

	}

	public List<Book> addBook(Book book) {
		Session sesssion = factory.openSession();
		sesssion.save(book);
		sesssion.beginTransaction().commit();

		return getBooks();
	}

	public List<Book> deleteBook(int bookId) {

		Session session = factory.openSession();
		session.beginTransaction();
		Query querry = session.createQuery("delete from Book where bookId=  :rn ");
		querry.setParameter("rn", bookId);
		querry.executeUpdate();
		session.getTransaction().commit();

		return getBooks();
	}

}
