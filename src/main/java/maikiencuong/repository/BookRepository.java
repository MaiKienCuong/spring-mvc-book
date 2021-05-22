package maikiencuong.repository;

import java.util.List;

import maikiencuong.entity.Book;

public interface BookRepository {

	public List<Book> findAll();

	public Book findById(int id);

	public void saveBook(Book book);

	public void deleteBook(int id);

}
