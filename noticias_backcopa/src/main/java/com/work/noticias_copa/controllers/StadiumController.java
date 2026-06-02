package com.work.noticias_copa.controllers;

import com.work.noticias_copa.dtos.StadiumRequestDTO;
import com.work.noticias_copa.dtos.StadiumResponseDTO;
import com.work.noticias_copa.services.StadiumService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/stadiums")
@CrossOrigin
public class StadiumController {

    @Autowired
    private StadiumService service;

    @GetMapping
    public ResponseEntity<List<StadiumResponseDTO>> getStadiums() {
        return ResponseEntity.ok(service.getStadiums());
    }

    @GetMapping("{id}")
    public ResponseEntity<StadiumResponseDTO> getById(@PathVariable Long id) {
        return ResponseEntity.ok(service.findById(id));
    }

    @DeleteMapping("{id}")
    public ResponseEntity<Void> deleteById(@PathVariable Long id) {
        service.deleteById(id);
        return ResponseEntity.noContent().build();
    }

    @PostMapping
    public ResponseEntity<StadiumResponseDTO> save(
            @Valid @RequestBody StadiumRequestDTO stadium) {

        StadiumResponseDTO s = service.save(stadium);

        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(s.id())
                .toUri();

        return ResponseEntity.created(location).body(s);
    }

    @PutMapping("{id}")
    public ResponseEntity<Void> update(
            @PathVariable Long id,
            @RequestBody StadiumRequestDTO stadium) {

        service.update(stadium, id);

        return ResponseEntity.noContent().build();
    }
}