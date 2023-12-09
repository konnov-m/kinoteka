package com.example.kinoteka.repo;

import com.example.kinoteka.models.Genre;
import org.springframework.data.repository.CrudRepository;

public interface GenreRepository extends CrudRepository<Genre, Long> {
}
