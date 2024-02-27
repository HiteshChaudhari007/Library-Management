package com.library.controler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.library.model.Book;
import com.library.service.libraryService;

@Controller
public class libraryControler {

	@Autowired
	public libraryService service;

	@GetMapping("/")
	public String onStart() {
		return "views/index.jsp";
	}

	@RequestMapping("/adminLogin")
	public String adminlogin(@RequestParam String name, @RequestParam int pass, Model model) {

		int num = service.loginChek(name, pass);
		if (num == 0) {
			List<Book> books = service.getBooks();
			model.addAttribute("data", books);
			return "views/admin.jsp";
		} else {
			return "redirect:views/index.jsp";
		}
	}

	@RequestMapping("/add")
	public String add() {

		return "views/add.jsp";
	}

	@RequestMapping("/adding")
	public String addBook(@ModelAttribute Book book, Model model) {
		List<Book> bk = service.addBook(book);
		model.addAttribute("data", bk);
		return "views/admin.jsp";

	}

	@RequestMapping("/delete")
	public String deleteBook(@RequestParam int bookId, Model model) {
		List<Book> bk = service.deleteBook(bookId);
		model.addAttribute("data", bk);
		return "views/admin.jsp";
	}
}
