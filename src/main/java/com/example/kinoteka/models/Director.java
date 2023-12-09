package com.example.kinoteka.models;


import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;

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
    @OneToOne(fetch = FetchType.EAGER, mappedBy = "director")
    private Film film;
}
