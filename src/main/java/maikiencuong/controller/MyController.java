package maikiencuong.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Base64;

import javax.validation.Valid;

import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import maikiencuong.entity.Book;
import maikiencuong.repository.BookRepository;

@Controller
public class MyController {

	@Autowired
	private BookRepository bookRepository;

	@Autowired
	private SessionFactory sessionFactory;

	@GetMapping("/")
	public String home() {
		return "index";
	}

	@GetMapping("book/manager")
	public String manager(Model model) {
		model.addAttribute("books", bookRepository.findAll());
		return "manager";
	}

	@GetMapping("/book")
	public String getById(@RequestParam("id") int id, Model model) {
		Book book = bookRepository.findById(id);
		model.addAttribute("book", book);
		return "book-detail";
	}

	@GetMapping("/book/list")
	public String listBook(Model model) {
		model.addAttribute("books", bookRepository.findAll());
		return "book-list2";
	}

	@GetMapping("/book/add")
	public String addBook(Model model) {
		model.addAttribute("book", new Book());
		return "book-form";
	}

	@GetMapping("/book/update")
	public String update(Model model, @RequestParam("id") int id) {
		model.addAttribute("book", bookRepository.findById(id));
		return "book-form";
	}

	@GetMapping("/book/delete")
	public String delete(@RequestParam("id") int id) {
		bookRepository.deleteBook(id);
		return "redirect: list";
	}

	@PostMapping("/book/save")
	@Transactional
	public String save(@RequestParam("fileUpload") MultipartFile multipartFile,
			@Valid @ModelAttribute("book") Book book, BindingResult bindingResult) throws IOException, SQLException {
		if (bindingResult.hasErrors()) {
			return "book-form";
		}
		Blob blob = Hibernate.getLobCreator(sessionFactory.getCurrentSession()).createBlob(multipartFile.getBytes());
		byte[] encode = Base64.getEncoder().encode(blob.getBinaryStream().readAllBytes());
		book.setImage(new String(encode));
		bookRepository.saveBook(book);
		return "redirect:list";
	}

}
