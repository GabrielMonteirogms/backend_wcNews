package com.work.noticias_copa.controllers;

import com.work.noticias_copa.dtos.NewsRequestDTO;
import com.work.noticias_copa.dtos.NewsResponseDTO;
import com.work.noticias_copa.services.NewsService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/news")
@CrossOrigin
public class NewsController {

    @Autowired
    private NewsService service;

    @GetMapping
    public ResponseEntity<List<NewsResponseDTO>> getNews() {
        return ResponseEntity.ok(service.getNews());
    }


    @GetMapping("{id}")
    public ResponseEntity<NewsResponseDTO> getById(@PathVariable Long id) {
        return ResponseEntity.ok(service.findById(id));
    }

    @DeleteMapping("{id}")
    public ResponseEntity<Void> deleteById(@PathVariable Long id) {
        service.deleteById(id);
        return ResponseEntity.noContent().build();
    }

    @PostMapping
    public ResponseEntity<NewsResponseDTO> save(
            @Valid @RequestBody NewsRequestDTO news) {

        NewsResponseDTO n = service.save(news);

        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(n.id())
                .toUri();

        return ResponseEntity.created(location).body(n);
    }

    @PutMapping("{id}")
    public ResponseEntity<Void> update(
            @PathVariable Long id,
            @RequestBody NewsRequestDTO news) {

        service.update(news, id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/featured")
    public ResponseEntity<List<NewsResponseDTO>> getFeatured() {
        return ResponseEntity.ok(service.getFeatured());
    }

    @GetMapping("/most-viewed")
    public ResponseEntity<List<NewsResponseDTO>> getMostViewed() {
        return ResponseEntity.ok(service.getMostViewed());
    }

    @GetMapping("/category/{id}")
    public ResponseEntity<List<NewsResponseDTO>> getByCategory(@PathVariable Long id) {
        return ResponseEntity.ok(service.getByCategory(id));
    }

    @GetMapping("/latest")
    public ResponseEntity<List<NewsResponseDTO>> getByData() {
        return ResponseEntity.ok(service.getCreatedAt());
    }

    @GetMapping("/journalist/{id}")
    public ResponseEntity<List<NewsResponseDTO>> getByJournalist(@PathVariable Long id) {
        return ResponseEntity.ok(service.getByJournalist(id));
    }

    @GetMapping("/stadium/{id}")
    public ResponseEntity<List<NewsResponseDTO>> getByStadium(@PathVariable Long id) {
        return ResponseEntity.ok(service.getByStadium(id));
    }



}
