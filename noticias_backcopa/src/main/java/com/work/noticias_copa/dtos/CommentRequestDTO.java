package com.work.noticias_copa.dtos;

import com.work.noticias_copa.entities.News;

import java.time.LocalDateTime;

public record CommentRequestDTO (
        String authorName,

        String message,

        LocalDateTime createdAt,

        News news

){

}
