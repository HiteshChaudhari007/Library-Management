package com.library.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.dao.libraryDao;
import com.library.model.Book;

@Service
public class libraryServiceIml implements libraryService {

	@Autowired
	public libraryDao dao;

	public int loginChek(String name, int pass) {
		if (name.equals("admin") && pass == 1234) {
			return 0;
		}
		return 1;
	}

	public List<Book> getBooks() {

		return dao.getBooks();
	}

	public List<Book> addBook(Book book) {

		return dao.addBook(book);
	}

	public List<Book> deleteBook(int bookId) {

		return dao.deleteBook(bookId);
	}

}
