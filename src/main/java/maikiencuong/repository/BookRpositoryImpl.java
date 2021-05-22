package maikiencuong.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import maikiencuong.entity.Book;

@Repository
public class BookRpositoryImpl implements BookRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Book> findAll() {
		Session session = sessionFactory.getCurrentSession();
		List<Book> books = session.createQuery("from Book", Book.class).getResultList();
		return books;
	}

	@Override
	@Transactional
	public Book findById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Book book = session.find(Book.class, id);
		return book;
	}

	@Override
	@Transactional
	public void saveBook(Book book) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(book);
	}

	@Override
	@Transactional
	public void deleteBook(int id) {
		Session session = sessionFactory.getCurrentSession();
		Book book = session.find(Book.class, id);
		if (book != null)
			session.delete(book);
	}

}
