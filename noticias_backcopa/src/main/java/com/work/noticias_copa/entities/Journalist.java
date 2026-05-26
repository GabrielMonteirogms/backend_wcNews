package com.work.noticias_copa.entities;

import jakarta.persistence.*;
import lombok.*;
import java.util.List;

@Entity
@Table(name = "TBL_JOURNALIST")

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class Journalist implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String email;

    private String country;

    private String photoUrl;

    @Column(columnDefinition = "TEXT")
    private String biography;

    @OneToMany(mappedBy = "journalist")
    private List<News> news;
}