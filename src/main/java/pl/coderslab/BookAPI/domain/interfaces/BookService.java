package pl.coderslab.BookAPI.domain.interfaces;

import pl.coderslab.BookAPI.domain.model.Book;
import java.util.List;
import java.util.Optional;

public interface BookService {

    List<Book> getList();
    void edit(Book book);
    void delete(Long id);
    Optional<Book> get(Long id);
    Book add(Book book);
}