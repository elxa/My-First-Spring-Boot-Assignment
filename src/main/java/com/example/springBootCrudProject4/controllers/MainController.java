/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.springBootCrudProject4.controllers;

import com.example.springBootCrudProject4.entities.Trainers;
import com.example.springBootCrudProject4.services.TrainerServiceInterface;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    
    @Autowired
    private TrainerServiceInterface trainerServiceInterface;

    @RequestMapping("/")
    public String viewHomePage(ModelMap mm) {
        List<Trainers> list = trainerServiceInterface.listAll();
        mm.addAttribute("listtrainers", list);
        return "index";
    }

    @RequestMapping("/new")
    public String viewNewProductForm(ModelMap mm) {
        Trainers trainer = new Trainers();
        mm.addAttribute("trainer", trainer);
        return "newTrainer";
    }

    @RequestMapping("/save")
    public String saveProduct(ModelMap mm, @ModelAttribute("trainer") Trainers trainer) {
        trainerServiceInterface.save(trainer);
        return "redirect:/";
    }

    //gia na ftia3oume to update arxika phgainoume sthn forma 
    @RequestMapping("/edit/{trainerId}")
    public String showEditProductForm(@PathVariable("trainerId") int trainerId, ModelMap mm) {
        mm.addAttribute("trainer", trainerServiceInterface.getTrainer(trainerId));
        return "updateFormTrainer";
    }

    @RequestMapping("/updateTrainer")
    public String saveUpdatedProduct(ModelMap mm, @ModelAttribute("trainer") Trainers trainer) {
        trainerServiceInterface.update(trainer);
        return "redirect:/";
    }

    @RequestMapping("/delete/{trainerId}")
    public String deleteProduct(@PathVariable int trainerId, ModelMap mm) {
        trainerServiceInterface.delete(trainerId);
        return "redirect:/";
    }
}
