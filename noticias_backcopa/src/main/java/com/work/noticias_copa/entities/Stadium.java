package com.work.noticias_copa.entities;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "TBL_STADIUM")

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class Stadium implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String city;

    private String country;

    private Integer capacity;

    private String imageUrl;

    @Column(columnDefinition = "TEXT")
    private String description;

    private Integer openedYear;

    @OneToMany(mappedBy = "stadium")
    private List<News> news;
}