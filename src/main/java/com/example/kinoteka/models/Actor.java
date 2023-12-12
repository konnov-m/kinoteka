package com.example.kinoteka.models;


import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;
import java.util.Set;

@Entity
@Table(name = "actors")
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class Actor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String surname;

    private String name;

    private String patronymic;

    private String sex;

    private String birthplace;

    private String zodiac;

    private Date birthday;

    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @ManyToMany(mappedBy = "actors", fetch = FetchType.EAGER)
    private Set<Film> films;

    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @ManyToMany(mappedBy = "actors", fetch = FetchType.EAGER)
    private Set<Episode> episodes;
}
