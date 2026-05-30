package com.work.noticias_copa.dtos;

public record JournalistResponseDTO(

        Long id,

        String name,

        String email,

        String country,

        String photoUrl,

        String biography

) {
}