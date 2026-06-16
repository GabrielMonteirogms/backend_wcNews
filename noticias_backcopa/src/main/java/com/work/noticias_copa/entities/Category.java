package com.work.noticias_copa.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "TBL_CATEGORY")

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Category implements java.io.Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;

    private String name;

    private String description;


    @OneToMany(mappedBy = "category")
    @JsonIgnore
    private List<News> news;
}
