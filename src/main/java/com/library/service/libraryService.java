package com.library.service;

import java.util.List;

import com.library.model.Book;

public interface libraryService {

	int loginChek(String name, int pass);

	public List<Book> getBooks();

}
