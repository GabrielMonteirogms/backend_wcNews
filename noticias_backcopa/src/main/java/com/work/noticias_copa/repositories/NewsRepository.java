package com.work.noticias_copa.repositories;

import com.work.noticias_copa.entities.News;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NewsRepository extends JpaRepository<News, Long> {
}
