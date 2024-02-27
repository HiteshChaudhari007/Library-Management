package com.library.dao;

import java.util.List;

import com.library.model.Book;

public interface libraryDao {

	List<Book> getBooks();

	List<Book> addBook(Book book);

	List<Book> deleteBook(int bookId);

}
