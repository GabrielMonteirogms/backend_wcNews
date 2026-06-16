package com.work.noticias_copa.entities;


import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "TBL_NEWS")

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class News implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String summary;

    @Column(columnDefinition = "TEXT")
    private String content;

    private String imageUrl;
    @Column(name = "video_url")
    private String videoUrl;
    private Boolean featured;
    private Integer views;
    private LocalDateTime createdAt;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @ManyToOne
    @JoinColumn(name = "journalist_id")
    private Journalist journalist;

    @ManyToOne
    @JoinColumn(name = "stadium_id")
    private Stadium stadium;

}