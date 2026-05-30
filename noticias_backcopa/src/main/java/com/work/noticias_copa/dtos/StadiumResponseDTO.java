package com.work.noticias_copa.dtos;

import com.work.noticias_copa.entities.News;

public record StadiumResponseDTO(

        Long id,
        String name,
        String city,
        String country,
        Integer capacity,
        String imageUrl,
        String description,
        Integer openedYear
) {
}
