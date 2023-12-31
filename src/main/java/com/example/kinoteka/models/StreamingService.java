package com.example.kinoteka.models;


import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity
@Table(name = "streaming_services")
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class StreamingService {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    private String name;

    private String owner;

    private Float rating;

    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @ManyToMany(mappedBy = "services", fetch = FetchType.EAGER)
    private List<Film> films;

    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @ManyToMany(mappedBy = "services", fetch = FetchType.EAGER)
    private List<Series> series;
}
