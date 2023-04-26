/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.DetalleFactura;
import Tarea1HTML.demo.repository.DetalleFacturaRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author david
 */
@Service
public class DetalleFacturaService implements IDetalleFacturaService {

    @Autowired
    private DetalleFacturaRepository detallefacturaRepository;
    
    @Override
    public List<DetalleFactura> getAllDetalleFactura() {
        return (List<DetalleFactura>)detallefacturaRepository.findAll();
    }
    
    @Override
    public DetalleFactura getDetalleFacturaById(long id){
        return detallefacturaRepository.findById(id).orElse(null);
    }
    
    @Override
    public void saveDetalleFactura(DetalleFactura detalleFactura){
        detallefacturaRepository.save(detalleFactura);
    }
    
    @Override
    public void delete(long id){
        detallefacturaRepository.deleteById(id);
    }
    
}
