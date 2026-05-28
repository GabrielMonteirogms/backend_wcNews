package com.work.noticias_copa.repositories;

import com.work.noticias_copa.entities.Comment;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CommentCategory extends JpaRepository<Comment, Long> {
}
