/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Donut;
import Tarea1HTML.demo.repository.DonutRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class DonutService implements IDonutService{
    
    @Autowired
    private DonutRepository donutRepository;
    
    @Override
    public List<Donut> getAllDonut() {
        return (List<Donut>)donutRepository.findAll();
    }
    
    @Override
    public Donut getDonutById(long id){
        return donutRepository.findById(id).orElse(null);
    }
    
    @Override
    public void saveDonut(Donut donut){
        donutRepository.save(donut);
    }
    
    @Override
    public void delete(long id){
        donutRepository.deleteById(id);
    }
}
