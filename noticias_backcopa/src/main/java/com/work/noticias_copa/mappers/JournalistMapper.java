package com.work.noticias_copa.mappers;

import com.work.noticias_copa.dtos.JournalistRequestDTO;
import com.work.noticias_copa.dtos.JournalistResponseDTO;
import com.work.noticias_copa.entities.Journalist;

public class JournalistMapper {

    public static JournalistResponseDTO toDTO(Journalist journalist) {

        return new JournalistResponseDTO(

                journalist.getId(),
                journalist.getName(),
                journalist.getEmail(),
                journalist.getCountry(),
                journalist.getPhotoUrl(),
                journalist.getBiography()
        );
    }

    public static Journalist toEntity(JournalistRequestDTO journalist) {

        Journalist j = new Journalist();

        j.setName(journalist.name());
        j.setEmail(journalist.email());
        j.setCountry(journalist.country());
        j.setPhotoUrl(journalist.photoUrl());
        j.setBiography(journalist.biography());

        return j;
    }
}