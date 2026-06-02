package com.work.noticias_copa.mappers;

import com.work.noticias_copa.dtos.NewsRequestDTO;
import com.work.noticias_copa.dtos.NewsResponseDTO;
import com.work.noticias_copa.entities.News;

public class NewsMapper {

    public static NewsResponseDTO toDTO(News news) {

        return new NewsResponseDTO(
                news.getId(),
                news.getTitle(),
                news.getSummary(),
                news.getContent(),
                news.getImageUrl(),
                news.getFeatured(),
                news.getViews(),
                news.getCreatedAt(),
                news.getCategory().getId(),
                news.getJournalist().getId(),
                news.getStadium().getId()
        );
    }

    public static News toEntity(NewsRequestDTO dto) {

        News n = new News();

        n.setTitle(dto.title());
        n.setSummary(dto.summary());
        n.setContent(dto.content());
        n.setImageUrl(dto.imageUrl());
        n.setFeatured(dto.featured());
        n.setViews(dto.views());
        n.setCreatedAt(dto.createdAt());

        return n;
    }
}