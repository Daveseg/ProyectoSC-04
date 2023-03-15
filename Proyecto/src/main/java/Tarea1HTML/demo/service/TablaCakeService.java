/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.TablaCake;
import Tarea1HTML.demo.repository.TablaCakeRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TablaCakeService implements ITablaCakeService{

    @Autowired
    private TablaCakeRepository tablaCakeRepository;
    
    @Override
    public List<TablaCake>listTablaCake(){
        return (List<TablaCake>)tablaCakeRepository.findAll();
    }
}
