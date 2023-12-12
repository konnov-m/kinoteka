package com.example.kinoteka.models;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "critics_tv_series_episodes_reviews")
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class CriticsEpisodeReview {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @ManyToOne
    @JoinColumn(name = "critic_id")
    private User critic;

    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @ManyToOne
    @JoinColumn(name = "tv_series_episode_id")
    private Episode episode;

    @Column(name = "review")
    private String review;
}
