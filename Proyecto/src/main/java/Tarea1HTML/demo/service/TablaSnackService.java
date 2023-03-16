/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.TablaSnack;
import Tarea1HTML.demo.repository.TablaSnackRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TablaSnackService implements ITablaSnackService{
    
    @Autowired
    private TablaSnackRepository tablaSnackRepository;
    
    @Override
    public List<TablaSnack>listTablaSnack(){
        return (List<TablaSnack>)tablaSnackRepository.findAll();
    }
    
}
