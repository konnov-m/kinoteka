package com.example.kinoteka.repo;

import com.example.kinoteka.models.Episode;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface EpisodeRepository extends CrudRepository<Episode, String> {

    List<Episode> findBySeriesId(Long serialId);


    Episode findByIdAndSeriesId (String id, Long serialId);
}
