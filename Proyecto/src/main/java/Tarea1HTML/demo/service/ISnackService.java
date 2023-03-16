/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Snack;
import java.util.List;


public interface ISnackService {
    public List<Snack> getAllSnack();
    public Snack getSnackById(long id);
    public void saveCake(Snack snack);
    public void delete(long id);
}
