package com.work.noticias_copa.services;

import com.work.noticias_copa.dtos.JournalistRequestDTO;
import com.work.noticias_copa.dtos.JournalistResponseDTO;
import com.work.noticias_copa.entities.Journalist;
import com.work.noticias_copa.mappers.JournalistMapper;
import com.work.noticias_copa.repositories.JournalistRepository;

import jakarta.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JournalistService {

    @Autowired
    private JournalistRepository repository;

    public List<JournalistResponseDTO> getJournalists() {

        return repository.findAll()
                .stream()
                .map(JournalistMapper::toDTO)
                .toList();
    }

    public JournalistResponseDTO findById(Long id) {

        return repository.findById(id)
                .map(JournalistMapper::toDTO)
                .orElseThrow(() ->
                        new EntityNotFoundException("Journalist not found"));
    }

    public JournalistResponseDTO save(JournalistRequestDTO journalist) {

        Journalist j = repository.save(
                JournalistMapper.toEntity(journalist)
        );

        return JournalistMapper.toDTO(j);
    }

    public void deleteById(Long id) {

        if(repository.existsById(id)) {
            repository.deleteById(id);
        } else {
            throw new EntityNotFoundException("Journalist not found");
        }
    }

    public void update(JournalistRequestDTO journalist, Long id) {

        Journalist j = repository.findById(id)
                .orElseThrow(() ->
                        new EntityNotFoundException("Journalist not found"));

        j.setName(journalist.name());
        j.setEmail(journalist.email());
        j.setCountry(journalist.country());
        j.setPhotoUrl(journalist.photoUrl());
        j.setBiography(journalist.biography());

        repository.save(j);
    }
}