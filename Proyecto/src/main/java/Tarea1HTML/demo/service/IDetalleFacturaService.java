/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.DetalleFactura;
import java.util.List;

/**
 *
 * @author david
 */
public interface IDetalleFacturaService {
    public List<DetalleFactura> getAllDetalleFactura();
    public DetalleFactura getDetalleFacturaById(long id);
    public void saveDetalleFactura(DetalleFactura carrito);
    public void delete(long id);
}
