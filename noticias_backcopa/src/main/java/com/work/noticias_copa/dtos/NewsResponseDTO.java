package com.work.noticias_copa.dtos;

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
        Long categoryId,
        String videoUrl,
        Long journalistId,
        Long stadiumId

) {}