package com.example.springBootCrudProject4.services;

import com.example.springBootCrudProject4.entities.Trainers;
import com.example.springBootCrudProject4.repos.TrainerRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service //panta prepei na to pros8etoume etsi wste na mhn xtupaei la8os meta 
public class TrainerService implements TrainerServiceInterface {

    @Autowired //h spring kalei automata to antikeimeno me olew tis idiothtes me to autowired
    private TrainerRepository repo;

    @Override
    public List<Trainers> listAll() {
        return repo.findAll();
    }

    @Override
    public void save(Trainers trainer) {
        repo.save(trainer);
    }

    @Override
    public Trainers getTrainer(Integer id) {
        return repo.getOne(id);
    }

    @Override
    public void delete(Integer id) {
        repo.deleteById(id);
    }

    @Override
    public void update(Trainers trainer) {
        Trainers tr = repo.getOne(trainer.getTrainerId());
        tr.setTrainerId(trainer.getTrainerId());
        tr.setFirstName(trainer.getFirstName());
        tr.setLastName(trainer.getLastName());
        tr.setSubject(trainer.getSubject());
        repo.save(tr);
    }

}
