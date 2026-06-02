package com.work.noticias_copa.dtos;

import java.time.LocalDateTime;

public record NewsRequestDTO(

        String title,
        String summary,
        String content,
        String imageUrl,
        Boolean featured,
        Integer views,
        LocalDateTime createdAt,

        Long categoryId,
        Long journalistId,
        Long stadiumId

) {}