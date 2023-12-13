package com.example.kinoteka.models;


import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "directors")
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class Director {

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
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "director")
    private List<Film> film;

    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "director")
    private List<Episode> episodes;


    public Set<Series> getSeries () {
        Set<Series> set = new HashSet<>();
        for (Episode ep : episodes) {
            set.add(ep.getSeries());
        }
        return set;
    }
}
