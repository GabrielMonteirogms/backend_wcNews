package com.work.noticias_copa.services;

import com.work.noticias_copa.dtos.NewsRequestDTO;
import com.work.noticias_copa.dtos.NewsResponseDTO;
import com.work.noticias_copa.entities.News;
import com.work.noticias_copa.mappers.NewsMapper;
import com.work.noticias_copa.repositories.NewsRepository;

import jakarta.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsService {

    @Autowired
    private NewsRepository repository;

    public List<NewsResponseDTO> getNews() {
        return repository.findAll()
                .stream()
                .map(NewsMapper::toDTO)
                .toList();
    }

    public NewsResponseDTO findById(Long id) {
        return repository.findById(id)
                .map(NewsMapper::toDTO)
                .orElseThrow(() ->
                        new EntityNotFoundException("News not found"));
    }

    public void deleteById(Long id) {

        if(repository.existsById(id)) {
            repository.deleteById(id);
        }

        else {
            throw new EntityNotFoundException("News not found");
        }
    }

    public NewsResponseDTO save(NewsRequestDTO news) {

        News n = repository.save(
                NewsMapper.toEntity(news)
        );

        return NewsMapper.toDTO(n);
    }

    public void update(NewsRequestDTO news, Long id) {

        News n = repository.findById(id)
                .orElseThrow(() ->
                        new EntityNotFoundException("News not found"));

        n.setTitle(news.title());
        n.setSummary(news.summary());
        n.setContent(news.content());
        n.setImageUrl(news.imageUrl());
        n.setFeatured(news.featured());
        n.setViews(news.views());
        n.setCreatedAt(news.createdAt());
        n.setCategory(news.category());
        n.setJournalist(news.journalist());
        n.setStadium(news.stadium());

        repository.save(n);
    }
}