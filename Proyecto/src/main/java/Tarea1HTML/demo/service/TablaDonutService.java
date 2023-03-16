/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;



import Tarea1HTML.demo.entity.TablaDonut;
import Tarea1HTML.demo.repository.TablaDonutRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TablaDonutService implements ITablaDonutService{
    
    @Autowired
    private TablaDonutRepository tablaDonutRepository;
    
    @Override
    public List<TablaDonut>listTablaDonut(){
        return (List<TablaDonut>)tablaDonutRepository.findAll();
    }
}
