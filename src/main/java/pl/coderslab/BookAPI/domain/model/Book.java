package pl.coderslab.BookAPI.domain.model;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "books")
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter @Setter
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false)
    private String isbn;
    @Column(nullable = false)
    private String title;
    @Column(nullable = false)
    private String author;
    @Column(nullable = false)
    private String publisher;
    @Column(nullable = false)
    private String type;
}