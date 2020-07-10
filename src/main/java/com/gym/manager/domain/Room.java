package com.gym.manager.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import javax.persistence.*;

@Entity
@Table(name="room")
@Data
@NoArgsConstructor
public class Room {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "room_id")
    private int roomId;

    @NonNull
    @Column(name = "room_building")
    private String roomBuilding;

    @NonNull
    @Column(name = "room_number")
    private String roomNumber;

    @NonNull
    @Column(name = "room_size")
    private int roomSize;

}
