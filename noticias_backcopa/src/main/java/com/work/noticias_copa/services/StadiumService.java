package com.work.noticias_copa.services;

import com.work.noticias_copa.dtos.StadiumRequestDTO;
import com.work.noticias_copa.dtos.StadiumResponseDTO;
import com.work.noticias_copa.entities.Stadium;
import com.work.noticias_copa.mappers.StadiumMapper;
import com.work.noticias_copa.repositories.StadiumRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StadiumService {

    @Autowired
    private StadiumRepository repository;

    public List<StadiumResponseDTO> getStadiums() {

        return repository.findAll()
                .stream()
                .map(StadiumMapper::toDto)
                .toList();
    }
        public StadiumResponseDTO findById(Long id) {

        return repository.findById(id)
                .map(StadiumMapper::toDto)
                .orElseThrow(() ->
                        new EntityNotFoundException("Stadium not found"));
    }
    public void deleteById(Long id) {
        if(repository.existsById(id)){
            repository.deleteById(id);
        }
        else {
            throw new EntityNotFoundException("Stadium not found");
        }
    }
    public StadiumResponseDTO save(StadiumRequestDTO stadium) {
        Stadium s = repository.save(
                StadiumMapper.toEntity(stadium)
        );
        return StadiumMapper.toDto(s);
    }
    public void update(StadiumRequestDTO stadium, Long id){
        Stadium s = repository.findById(id)
                .orElseThrow(() ->
                        new EntityNotFoundException("Stadium not found"));

        s.setName(stadium.name());
        s.setCity(stadium.city());
        s.setCountry(stadium.country());
        s.setCapacity(stadium.capacity());
        s.setImageUrl(stadium.imageUrl());
        s.setDescription(stadium.description());
        s.setOpenedYear(stadium.openedYear());

    }
}

