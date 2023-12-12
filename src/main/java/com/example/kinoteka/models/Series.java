package com.example.kinoteka.models;


import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;
import java.util.Set;

@Entity
@Table(name = "tv_series")
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class Series {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    private String company;

    private Integer start_year;

    private Integer end_year;

    private Integer seasons_num;

    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @ManyToMany(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH},
            fetch = FetchType.EAGER)
    @JoinTable(name = "tv_series_genres",
            joinColumns = @JoinColumn(name = "tv_series_id"),
            inverseJoinColumns = @JoinColumn(name = "genre_id"))
    private Set<Genre> genres;

    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "series")
    private List<Episode> episodes;

    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @ManyToMany(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH},
            fetch = FetchType.EAGER)
    @JoinTable(name = "streamings_tv_series",
            joinColumns = @JoinColumn(name = "tv_series_id"),
            inverseJoinColumns = @JoinColumn(name = "streaming_id"))
    private Set<StreamingService> services;

    public String getYears() {
        if (end_year == 0) {
            return start_year + " - ...";
        } else {
            return start_year + " - " + end_year;
        }
    }
}
