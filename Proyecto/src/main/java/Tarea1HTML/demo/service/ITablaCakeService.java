/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.TablaCake;
import java.util.List;

/**
 *
 * @author jcga5
 */
public interface ITablaCakeService {
    public List<TablaCake> getAllTablaCake();
    public TablaCake getTablaCakeById (long id);
    public void saveTablaCake(TablaCake tablaCake);
    public  void delete (long id);
}
