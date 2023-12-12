package com.example.kinoteka.repo;

import com.example.kinoteka.models.Series;
import org.springframework.data.repository.CrudRepository;

public interface SeriesRepository extends CrudRepository<Series, Long> {
}
