/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Carrito;
import java.util.List;

/**
 *
 * @author david
 */
public interface ICarritoService {
    public List<Carrito> getAllCarrito();
    public Carrito getCarritoById(long id);
    public void saveCarrito(Carrito carrito);
    public void delete(long id);
}
