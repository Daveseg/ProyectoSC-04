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

/**
 *
 * @author jcga5
 */
@Service
public class CakeService  implements ICakeService{
    
    @Autowired
    private CakeRepository cakeRepository;
    
    @Override
    public List<Cake> listCake(){
        return (List<Cake>)cakeRepository.findAll();
    }    
}
