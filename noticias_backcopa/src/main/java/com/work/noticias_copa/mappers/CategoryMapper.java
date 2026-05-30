package com.work.noticias_copa.mappers;

import com.work.noticias_copa.dtos.CategoryRequestDTO;
import com.work.noticias_copa.dtos.CategoryResponseDTO;
import com.work.noticias_copa.entities.Category;

public class CategoryMapper {

    public static CategoryResponseDTO toDTO(Category category) {
        return new CategoryResponseDTO(
                category.getId(),
                category.getName(),
                category.getDescription()
        );
    }

    public static Category toEntity(CategoryRequestDTO category) {

        Category c = new Category();

        c.setName(category.name());
        c.setDescription(category.description());

        return c;
    }
}
