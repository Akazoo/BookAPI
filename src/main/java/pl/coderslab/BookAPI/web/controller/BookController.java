package pl.coderslab.BookAPI.web.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.BookAPI.domain.interfaces.BookService;
import pl.coderslab.BookAPI.domain.model.Book;
import java.util.List;

@Controller
@RestController
@RequestMapping("/books")
@RequiredArgsConstructor
public class BookController {

    private final BookService jpa;

    @GetMapping
    public List<Book> getBooks() {
        return jpa.getList();
    }

    @PostMapping
    public Book addBook(@RequestBody Book book) {
        return jpa.add(book);
    }

    @GetMapping("/{id:\\d+}")
    public Book getById(@PathVariable Long id) {
        if (jpa.get(id).isPresent()) {
            return jpa.get(id).get();
        } else {
            return new Book();
        }
    }

    @PutMapping
    public void editBook(@RequestBody Book book) {
        jpa.edit(book);
    }

    @DeleteMapping("/{id:\\d+}")
    public void deleteBook(@PathVariable Long id) {
        jpa.delete(id);
    }
}