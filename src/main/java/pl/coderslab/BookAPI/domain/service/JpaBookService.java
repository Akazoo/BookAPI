package pl.coderslab.BookAPI.domain.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.BookAPI.domain.interfaces.BookService;
import pl.coderslab.BookAPI.domain.model.Book;
import pl.coderslab.BookAPI.domain.repository.BookRepository;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class JpaBookService implements BookService {

    private final BookRepository bookRepository;

    @Override
    public List<Book> getList() {
        return bookRepository.findAll();
    }

    @Override
    public void edit(Book book) {
        bookRepository.save(book);
    }

    @Override
    public void delete(Long id) {
        bookRepository.deleteById(id);
    }

    @Override
    public Optional<Book> get(Long id) {
        return bookRepository.findById(id);
    }

    @Override
    public Book add(Book book) {
        return bookRepository.save(book);
    }
}