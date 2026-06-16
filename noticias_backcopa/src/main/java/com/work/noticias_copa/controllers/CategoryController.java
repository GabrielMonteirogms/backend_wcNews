package com.work.noticias_copa.controllers;

import com.work.noticias_copa.dtos.CategoryRequestDTO;
import com.work.noticias_copa.dtos.CategoryResponseDTO;
import com.work.noticias_copa.entities.Category;
import com.work.noticias_copa.services.CategoryService;

import jakarta.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/news/categories")
@CrossOrigin
public class CategoryController {

    @Autowired
    private CategoryService service;

    @GetMapping
    public ResponseEntity<List<CategoryResponseDTO>> getCategories() {
        return ResponseEntity.ok(service.getCategories());
    }

    @GetMapping("{id}")
    public ResponseEntity<CategoryResponseDTO> getById(@PathVariable Long id) {
        return ResponseEntity.ok(service.findById(id));
    }

    @DeleteMapping("{id}")
    public ResponseEntity<Void> deleteById(@PathVariable Long id) {
        service.deleteById(id);
        return ResponseEntity.noContent().build();
    }

    @PostMapping
    public ResponseEntity<CategoryResponseDTO> save(
            @Valid @RequestBody CategoryRequestDTO category) {

        CategoryResponseDTO c = service.save(category);

        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(c.id())
                .toUri();

        return ResponseEntity.created(location).body(c);
    }

    @PutMapping("{id}")
    public ResponseEntity<Category> update(
            @PathVariable Long id,
            @RequestBody CategoryRequestDTO category) {

        service.update(category, id);

        return ResponseEntity.noContent().build();
    }
}