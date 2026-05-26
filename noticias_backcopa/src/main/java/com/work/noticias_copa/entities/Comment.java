package com.work.noticias_copa.entities;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "TBL_COMMENT")

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class Comment implements java.io.Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String authorName;

    @Column(columnDefinition = "TEXT")
    private String message;

    private LocalDateTime createdAt;

    @ManyToOne
    @JoinColumn(name = "news_id")
    private News news;
}