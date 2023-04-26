/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Carrito;
import Tarea1HTML.demo.repository.CarritoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author david
 */
@Service
public class CarritoService implements ICarritoService {

    @Autowired
    private CarritoRepository carritoRepository;
    
    @Override
    public List<Carrito> getAllCarrito() {
        return (List<Carrito>)carritoRepository.findAll();
    }

    @Override
    public Carrito getCarritoById(long id) {
        return carritoRepository.findById(id).orElse(null);
    }

    @Override
    public void saveCarrito(Carrito carrito) {
        carritoRepository.save(carrito);
    }

    @Override
    public void delete(long id) {
        carritoRepository.deleteById(id);
    }
    
}
