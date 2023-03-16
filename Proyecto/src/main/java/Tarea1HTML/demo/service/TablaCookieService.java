/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;


import Tarea1HTML.demo.entity.TablaCookie;
import Tarea1HTML.demo.repository.TablaCookieRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TablaCookieService implements ITablaCookieService {
    
    @Autowired
    private TablaCookieRepository tablaCookieRepository;
    
    @Override
    public List<TablaCookie>listTablaCookie(){
        return (List<TablaCookie>)tablaCookieRepository.findAll();
    }
}
