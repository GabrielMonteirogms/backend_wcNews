package com.work.noticias_copa.services;

import com.work.noticias_copa.dtos.CommentRequestDTO;
import com.work.noticias_copa.dtos.CommentResponseDTO;
import com.work.noticias_copa.entities.Comment;
import com.work.noticias_copa.mappers.CommentMapper;
import com.work.noticias_copa.repositories.CommentRepository;

import jakarta.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService {

    @Autowired
    private CommentRepository repository;

    public List<CommentResponseDTO> getComments() {

        return repository.findAll()
                .stream()
                .map(CommentMapper::toDTO)
                .toList();
    }

    public CommentResponseDTO findById(Long id) {

        return repository.findById(id)
                .map(CommentMapper::toDTO)
                .orElseThrow(() ->
                        new EntityNotFoundException("Comment not found"));
    }

    public void deleteById(Long id) {

        if(repository.existsById(id)) {
            repository.deleteById(id);
        }

        else {
            throw new EntityNotFoundException("Comment not found");
        }
    }

    public CommentResponseDTO save(CommentRequestDTO comment) {

        Comment c = repository.save(
                CommentMapper.toEntity(comment)
        );

        return CommentMapper.toDTO(c);
    }

    public void update(CommentRequestDTO comment, Long id) {

        Comment c = repository.findById(id)
                .orElseThrow(() ->
                        new EntityNotFoundException("Comment not found"));

        c.setAuthorName(comment.authorName());
        c.setMessage(comment.message());
        c.setCreatedAt(comment.createdAt());
        c.setNews(comment.news());

        repository.save(c);
    }
}