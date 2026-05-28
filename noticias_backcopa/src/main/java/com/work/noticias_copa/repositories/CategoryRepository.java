package com.work.noticias_copa.repositories;

import com.work.noticias_copa.entities.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Long> {
}
