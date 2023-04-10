/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Producto;
import java.util.List;

/**
 *
 * @author david
 */
public interface IProductoService {
    public List<Producto> getAllProducto();
    public Producto getProductoById(long id);
    public void saveProducto(Producto producto);
    public void delete(long id);
    public List<Producto> getAllProductobyTipo(long id); 
    
}
