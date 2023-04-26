/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Factura;
import java.util.List;

/**
 *
 * @author david
 */
public interface IFacturaService {
    public List<Factura> getAllFactura();
    public Factura getFacturaById(long id);
    public void saveFactura(Factura carrito);
    public void delete(long id);
}
