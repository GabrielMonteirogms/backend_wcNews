package com.work.noticias_copa.services;

import com.work.noticias_copa.dtos.CategoryRequestDTO;
import com.work.noticias_copa.dtos.CategoryResponseDTO;
import com.work.noticias_copa.entities.Category;
import com.work.noticias_copa.mappers.CategoryMapper;
import com.work.noticias_copa.repositories.CategoryRepository;

import jakarta.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepository repository;

    public List<CategoryResponseDTO> getCategories() {

        return repository.findAll()
                .stream()
                .map(CategoryMapper::toDTO)
                .toList();
    }

    public CategoryResponseDTO findById(Long id) {

        return repository.findById(id)
                .map(CategoryMapper::toDTO)
                .orElseThrow(() ->
                        new EntityNotFoundException("Category not found"));
    }

    public void deleteById(Long id) {

        if(repository.existsById(id)) {
            repository.deleteById(id);
        }

        else {
            throw new EntityNotFoundException("Category not found");
        }
    }

    public CategoryResponseDTO save(CategoryRequestDTO category) {

        Category c = repository.save(
                CategoryMapper.toEntity(category)
        );

        return CategoryMapper.toDTO(c);
    }

    public void update(CategoryRequestDTO category, Long id) {

        Category c = repository.findById(id)
                .orElseThrow(() ->
                        new EntityNotFoundException("Category not found"));

        c.setName(category.name());
        c.setDescription(category.description());

        repository.save(c);
    }
}