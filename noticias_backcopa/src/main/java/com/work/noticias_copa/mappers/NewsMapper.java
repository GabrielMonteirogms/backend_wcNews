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
                news.getCategory(),
                news.getJournalist(),
                news.getStadium()
        );
    }
    public static News toEntity(NewsRequestDTO news) {

        News n = new News();

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

        return n;
    }}