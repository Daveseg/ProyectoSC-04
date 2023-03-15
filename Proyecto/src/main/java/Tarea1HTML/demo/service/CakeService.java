/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Cake;
import Tarea1HTML.demo.repository.CakeRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CakeService implements ICakeService{
    
    @Autowired
    private CakeRepository cakeRepository;

    @Override
    public List<Cake> getAllCake() {
        return (List<Cake>)cakeRepository.findAll();
    }
    
    @Override
    public Cake getCakeById(long id){
        return cakeRepository.findById(id).orElse(null);
    }
    
    @Override
    public void saveCake(Cake cake){
        cakeRepository.save(cake);
    }
    
    @Override
    public void delete(long id){
        cakeRepository.deleteById(id);
    }
    
}
