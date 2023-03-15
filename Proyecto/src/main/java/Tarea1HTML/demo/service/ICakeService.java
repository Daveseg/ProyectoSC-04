/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Cake;
import java.util.List;


public interface ICakeService {
    public List<Cake> getAllCake();
    public Cake getCakeById(long id);
    public void saveCake(Cake cake);
    public void delete(long id);
}
