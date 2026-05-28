package com.work.noticias_copa.dtos;

import com.work.noticias_copa.entities.Category;
import com.work.noticias_copa.entities.Journalist;
import com.work.noticias_copa.entities.Stadium;

import java.time.LocalDateTime;

public record NewsResponseDTO(

        Long id,

        String title,

        String summary,

        String content,

        String imageUrl,

        Boolean featured,

        Integer views,

        LocalDateTime createdAt,

        Category category,

        Journalist journalist,

        Stadium stadium

) {
}