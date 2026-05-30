package com.work.noticias_copa.mappers;

import com.work.noticias_copa.dtos.StadiumRequestDTO;
import com.work.noticias_copa.dtos.StadiumResponseDTO;
import com.work.noticias_copa.entities.Stadium;

public class StadiumMapper {
    public static StadiumResponseDTO toDto(Stadium stadium){
        return new StadiumResponseDTO(

                stadium.getId(),
                stadium.getName(),
                stadium.getCity(),
                stadium.getCountry(),
                stadium.getCapacity(),
                stadium.getImageUrl(),
                stadium.getDescription(),
                stadium.getOpenedYear()
        );
    }
    public static Stadium toEntity(StadiumRequestDTO stadium){
        Stadium s = new Stadium();

        s.setName(stadium.name());
        s.setCity(stadium.city());
        s.setCountry(stadium.country());
        s.setCapacity(stadium.capacity());
        s.setImageUrl(stadium.imageUrl());
        s.setDescription(stadium.description());
        s.setOpenedYear(stadium.openedYear());


        return s;
    }
}
