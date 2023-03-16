/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Snack;
import Tarea1HTML.demo.repository.SnackRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SnackService implements ISnackService{
    
    @Autowired
    private SnackRepository snackRepository;

    @Override
    public List<Snack> getAllSnack() {
        return (List<Snack>)snackRepository.findAll();
    }

    @Override
    public Snack getSnackById(long id) {
        return snackRepository.findById(id).orElse(null);
    }

    @Override
    public void saveCake(Snack snack) {
        snackRepository.save(snack);
    }

    @Override
    public void delete(long id) {
        snackRepository.deleteById(id);
    }
    
    
}
