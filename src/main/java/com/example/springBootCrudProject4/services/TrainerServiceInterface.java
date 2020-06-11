package com.example.springBootCrudProject4.services;

import com.example.springBootCrudProject4.entities.Trainers;
import java.util.List;

public interface TrainerServiceInterface {

    public List<Trainers> listAll();

    public void save(Trainers trainer);

    public Trainers getTrainer(Integer id);

    public void delete(Integer id);

    public void update(Trainers trainer);

}
