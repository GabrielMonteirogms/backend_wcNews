package com.work.noticias_copa.dtos;

public record JournalistRequestDTO(

        String name,

        String email,

        String country,

        String photoUrl,

        String biography

) {
}