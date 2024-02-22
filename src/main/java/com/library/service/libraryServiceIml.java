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
		if (name.equals("Admin") && pass == 1234) {
			return 0;
		}
		return 1;
	}

	public List<Book> getBooks() {

		return dao.getBooks();
	}

}
