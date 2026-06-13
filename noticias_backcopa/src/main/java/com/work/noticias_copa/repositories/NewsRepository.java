package com.work.noticias_copa.repositories;

import com.work.noticias_copa.entities.News;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface NewsRepository extends JpaRepository<News, Long> {

    List<News> findByFeaturedTrue();

    List<News> findAllByOrderByViewsDesc();

    List<News> findAllByOrderByCreatedAtDesc();

    List<News> findByCategoryId(Long id);

    List<News> findByJournalistId(Long id);

    List<News> findByStadiumId(Long id);
}