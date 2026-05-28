package com.work.noticias_copa.repositories;

import com.work.noticias_copa.entities.Journalist;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JournalistRepository extends JpaRepository<Journalist,Long> {
}
