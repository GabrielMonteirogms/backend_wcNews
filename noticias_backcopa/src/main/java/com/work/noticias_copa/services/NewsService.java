package com.work.noticias_copa.services;

import com.work.noticias_copa.dtos.NewsRequestDTO;
import com.work.noticias_copa.dtos.NewsResponseDTO;
import com.work.noticias_copa.entities.*;
import com.work.noticias_copa.mappers.NewsMapper;
import com.work.noticias_copa.repositories.*;

import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsService {

    @Autowired private NewsRepository repository;
    @Autowired private CategoryRepository categoryRepository;
    @Autowired private JournalistRepository journalistRepository;
    @Autowired private StadiumRepository stadiumRepository;

    public List<NewsResponseDTO> getNews() {
        return repository.findAll().stream()
                .map(NewsMapper::toDTO)
                .toList();
    }

    public NewsResponseDTO findById(Long id) {
        return repository.findById(id)
                .map(NewsMapper::toDTO)
                .orElseThrow(() -> new EntityNotFoundException("News not found"));
    }

    public void deleteById(Long id) {
        repository.deleteById(id);
    }

    public NewsResponseDTO save(NewsRequestDTO dto) {

        News n = NewsMapper.toEntity(dto);

        Category c = categoryRepository.findById(dto.categoryId())
                .orElseThrow();

        Journalist j = journalistRepository.findById(dto.journalistId())
                .orElseThrow();

        Stadium s = stadiumRepository.findById(dto.stadiumId())
                .orElseThrow();

        n.setCategory(c);
        n.setJournalist(j);
        n.setStadium(s);

        return NewsMapper.toDTO(repository.save(n));
    }

    public void update(NewsRequestDTO dto, Long id) {

        News n = repository.findById(id)
                .orElseThrow();

        n.setTitle(dto.title());
        n.setSummary(dto.summary());
        n.setContent(dto.content());
        n.setImageUrl(dto.imageUrl());
        n.setFeatured(dto.featured());
        n.setViews(dto.views());
        n.setCreatedAt(dto.createdAt());

        repository.save(n);
    }

    //filtros:

    public List<NewsResponseDTO> getFeatured() {
        return repository.findByFeaturedTrue()
                .stream().map(NewsMapper::toDTO).toList();
    }

    public List<NewsResponseDTO> getMostViewed() {
        return repository.findAllByOrderByViewsDesc()
                .stream().map(NewsMapper::toDTO).toList();
    }

    public List<NewsResponseDTO> getByCategory(Long id) {
        return repository.findByCategoryId(id)
                .stream().map(NewsMapper::toDTO).toList();
    }


    public List<NewsResponseDTO> getByJournalist(Long id) {
        return repository.findByJournalistId(id)
                .stream().map(NewsMapper::toDTO).toList();
    }

    public List<NewsResponseDTO> getByStadium(Long id) {
        return repository.findByStadiumId(id)
                .stream().map(NewsMapper::toDTO).toList();
    }

    public List<NewsResponseDTO> getCreatedAt() {
        return repository.findAllByOrderByCreatedAtDesc()
                .stream().map(NewsMapper::toDTO).toList();
    }
}