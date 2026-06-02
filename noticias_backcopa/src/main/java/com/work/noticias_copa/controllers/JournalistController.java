package com.work.noticias_copa.controllers;

import com.work.noticias_copa.dtos.JournalistRequestDTO;
import com.work.noticias_copa.dtos.JournalistResponseDTO;
import com.work.noticias_copa.services.JournalistService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/journalists")
@CrossOrigin
public class JournalistController {

    @Autowired
    private JournalistService service;

    @GetMapping
    public ResponseEntity<List<JournalistResponseDTO>> getJournalists() {
        return ResponseEntity.ok(service.getJournalists());
    }

    @GetMapping("{id}")
    public ResponseEntity<JournalistResponseDTO> getById(@PathVariable Long id) {
        return ResponseEntity.ok(service.findById(id));
    }

    @DeleteMapping("{id}")
    public ResponseEntity<Void> deleteById(@PathVariable Long id) {
        service.deleteById(id);
        return ResponseEntity.noContent().build();
    }

    @PostMapping
    public ResponseEntity<JournalistResponseDTO> save(
            @Valid @RequestBody JournalistRequestDTO journalist) {

        JournalistResponseDTO j = service.save(journalist);

        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(j.id())
                .toUri();

        return ResponseEntity.created(location).body(j);
    }

    @PutMapping("{id}")
    public ResponseEntity<Void> update(
            @PathVariable Long id,
            @RequestBody JournalistRequestDTO journalist) {

        service.update(journalist, id);

        return ResponseEntity.noContent().build();
    }
}