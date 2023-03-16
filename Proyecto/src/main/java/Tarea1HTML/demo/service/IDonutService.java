/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Donut;
import java.util.List;


public interface IDonutService {
    public List<Donut> getAllDonut();
    public Donut getDonutById(long id);
    public void saveDonut(Donut donut);
    public void delete(long id);
}
