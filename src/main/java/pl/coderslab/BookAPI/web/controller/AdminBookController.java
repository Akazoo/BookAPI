package pl.coderslab.BookAPI.web.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.BookAPI.domain.interfaces.BookService;
import pl.coderslab.BookAPI.domain.model.Book;
import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;

@Controller
@RequestMapping("/admin/books")
@RequiredArgsConstructor
public class AdminBookController {

    private final BookService jpa;

    @GetMapping("/all")
    public String showAll(Model model) {
        model.addAttribute("books", jpa.getList());
        return "list";
    }

    @GetMapping("/delete")
    public String prepareDelete(Long id, Model model) {
        model.addAttribute("book", jpa.get(id).orElseThrow(EntityNotFoundException::new));
        return "confirm-delete";
    }

    @PostMapping("/delete")
    public String processDelete(Long id) {
        jpa.delete(id);
        return "redirect:/admin/books/all";
    }

    @GetMapping("/edit")
    public String prepareEdit(Long id, Model model) {
        model.addAttribute("book", jpa.get(id).orElseThrow(EntityNotFoundException::new));
        return "edit-form";
    }

    @PostMapping("/edit")
    public String processEdit(@Valid Book book, BindingResult result) {
        if (result.hasErrors()) {
            return "edit-form";
        }
        jpa.edit(book);
        return "redirect:/admin/books/show?id=" + book.getId();
    }

    @GetMapping("/create")
    public String prepareCreate(Model model) {
        model.addAttribute("book", new Book());
        return "create-form";
    }

    @PostMapping("/create")
    public String processCreate(@Valid Book book, BindingResult result) {
        if (result.hasErrors()) {
            return "create-form";
        }
        jpa.add(book);

        return "redirect:/admin/books/all";
    }

    @GetMapping("/show")
    public String showOne(Long id, Model model) {
        model.addAttribute("book", jpa.get(id).orElseThrow(NoClassDefFoundError::new));
        return "one";
    }
}