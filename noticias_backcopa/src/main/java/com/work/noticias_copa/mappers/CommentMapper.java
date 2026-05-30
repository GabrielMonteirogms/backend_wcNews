package com.work.noticias_copa.mappers;

import com.work.noticias_copa.dtos.CommentRequestDTO;
import com.work.noticias_copa.dtos.CommentResponseDTO;
import com.work.noticias_copa.entities.Comment;

public class CommentMapper {

    public static CommentResponseDTO toDTO(Comment comment) {

        return new CommentResponseDTO(

                comment.getId(),
                comment.getAuthorName(),
                comment.getMessage(),
                comment.getCreatedAt(),
                comment.getNews()
        );
    }

    public static Comment toEntity(CommentRequestDTO comment) {

        Comment c = new Comment();

        c.setAuthorName(comment.authorName());
        c.setMessage(comment.message());
        c.setCreatedAt(comment.createdAt());
        c.setNews(comment.news());

        return c;
    }
}