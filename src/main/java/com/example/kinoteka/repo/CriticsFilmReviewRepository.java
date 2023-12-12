package com.example.kinoteka.repo;

import com.example.kinoteka.models.CriticsFilmReview;
import com.example.kinoteka.models.Film;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CriticsFilmReviewRepository extends CrudRepository<CriticsFilmReview, Long> {
    List<CriticsFilmReview> findByFilm(Film film);
}
