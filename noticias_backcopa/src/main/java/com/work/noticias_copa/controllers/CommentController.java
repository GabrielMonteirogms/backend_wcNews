package com.work.noticias_copa.controllers;

import com.work.noticias_copa.dtos.CommentRequestDTO;
import com.work.noticias_copa.dtos.CommentResponseDTO;
import com.work.noticias_copa.services.CommentService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/comments")
@CrossOrigin
public class CommentController {

    @Autowired
    private CommentService service;

    @GetMapping
    public ResponseEntity<List<CommentResponseDTO>> getComments() {
        return ResponseEntity.ok(service.getComments());
    }

    @GetMapping("{id}")
    public ResponseEntity<CommentResponseDTO> getById(@PathVariable Long id) {
        return ResponseEntity.ok(service.findById(id));
    }

    @DeleteMapping("{id}")
    public ResponseEntity<Void> deleteById(@PathVariable Long id) {
        service.deleteById(id);
        return ResponseEntity.noContent().build();
    }

    @PostMapping
    public ResponseEntity<CommentResponseDTO> save(
            @Valid @RequestBody CommentRequestDTO comment) {

        CommentResponseDTO c = service.save(comment);

        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(c.id())
                .toUri();

        return ResponseEntity.created(location).body(c);
    }

    @PutMapping("{id}")
    public ResponseEntity<Void> update(
            @PathVariable Long id,
            @RequestBody CommentRequestDTO comment) {

        service.update(comment, id);

        return ResponseEntity.noContent().build();
    }
}