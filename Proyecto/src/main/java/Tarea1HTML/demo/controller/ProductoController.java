/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.controller;

import Tarea1HTML.demo.entity.Carrito;
import Tarea1HTML.demo.entity.CarritoDetalle;
import Tarea1HTML.demo.entity.DetalleFactura;
import Tarea1HTML.demo.entity.Factura;
import Tarea1HTML.demo.entity.Producto;
import Tarea1HTML.demo.service.ICarritoService;
import Tarea1HTML.demo.service.IDetalleFacturaService;
import Tarea1HTML.demo.service.IFacturaService;
import Tarea1HTML.demo.service.IProductoService;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author david
 */

@Controller
public class ProductoController {
    @Autowired
    private IProductoService productoService;
    
    @Autowired
    private ICarritoService carritoService;
    
    @Autowired
    private IFacturaService facturaService;
    
    @Autowired
    private IDetalleFacturaService detalleFacturaService;
    
    @GetMapping("/cake")
    public String index(Model model){
        List<Producto> listaCake = productoService.getAllProductobyTipo(1);
        model.addAttribute("titulo", "Our Cakes");
        model.addAttribute("cakes", listaCake);
        return "cakes";
    }
    
    @GetMapping("/cookie")
    public String indexcookie(Model model){
        List<Producto> listaCookie = productoService.getAllProductobyTipo(3);
        model.addAttribute("titulo", "Our Cookies");
        model.addAttribute("cookies", listaCookie);
        return "cookies";
    }
    
    @GetMapping("/donut")
    public String indexdonut(Model model){
        //List<Donut> listaDonut = donutService.getAllDonut();
        List<Producto> listaDonut = productoService.getAllProductobyTipo(2);
        model.addAttribute("titulo", "Our Donuts");
        model.addAttribute("donuts", listaDonut);
        return "donuts";
    }
    
    @GetMapping("/snack")
    public String indexsnack(Model model){
        List<Producto> listaSnack = productoService.getAllProductobyTipo(4);
        model.addAttribute("titulo", "Our Snacks");
        model.addAttribute("snacks", listaSnack);
        return "snacks";
    }
    
    
    @GetMapping("/carrito/{id}")
    public String addCart(@PathVariable("id") int idProducto,Model model){
        Carrito carro = new Carrito();
        carro.setCantidad(1);
        carro.setProducto_Id(idProducto);
        carro.setUsuario_Id(2);
        carro.setSucursal_id(1);
        carritoService.saveCarrito(carro);

        List<Carrito> lista = carritoService.getAllCarrito();  
        List<CarritoDetalle> detalle = new ArrayList<CarritoDetalle>();
        for(Carrito i : lista)
        {
            Producto prod = productoService.getProductoById(i.getProducto_Id());
            CarritoDetalle det = new CarritoDetalle(i.getId(),prod.getSabor(), 1, prod.getPrecio());
            detalle.add(det);
        }
        
        model.addAttribute("carrito", detalle);        
        
        return "cart";
    }
    
    @GetMapping("/deleteCarrito/{id}")
    public String deleteCart(@PathVariable("id") int idCarrito,Model model){
        carritoService.delete(idCarrito);

        List<Carrito> lista = carritoService.getAllCarrito();  
        List<CarritoDetalle> detalle = new ArrayList<CarritoDetalle>();
        for(Carrito i : lista)
        {
            Producto prod = productoService.getProductoById(i.getProducto_Id());
            CarritoDetalle det = new CarritoDetalle(i.getId(),prod.getSabor(), 1, prod.getPrecio());
            detalle.add(det);
        }
        
        model.addAttribute("carrito", detalle);        
        
        return "cart";
    }
    
    @GetMapping("/mostrarcarrito")
    public String mostrarcarrito(Model model){
        List<Carrito> lista = carritoService.getAllCarrito();  
        List<CarritoDetalle> detalle = new ArrayList<CarritoDetalle>();
        for(Carrito i : lista)
        {
            Producto prod = productoService.getProductoById(i.getProducto_Id());
            CarritoDetalle det = new CarritoDetalle(i.getId(),prod.getSabor(), 1, prod.getPrecio());
            detalle.add(det);
        }
        
        model.addAttribute("carrito", detalle);        
        
        return "cart";
    }
    
    @GetMapping("/Comprar")
    public String ComprarCarrito(Model model){
        long idfactura = 0;
        List<Carrito> lista = carritoService.getAllCarrito();
        Factura fac = new Factura();
        fac.setFecha(LocalDateTime.now());
        fac.setSucursal_id(1);
        fac.setUsuario_id(2);
        
        facturaService.saveFactura(fac);
        
        List<Factura> facturas = facturaService.getAllFactura();
        
        for(Factura i : facturas)
        {
            idfactura = i.getRecibo();
        }
        
        for(Carrito i : lista)
        {
            DetalleFactura det = new DetalleFactura();
            det.setCantidad(1);
            det.setProducto_id(i.getProducto_Id());
            det.setRecibo(idfactura);
            
            detalleFacturaService.saveDetalleFactura(det);
        }
        
        for(Carrito i : lista)
        {
            carritoService.delete(i.getId());
        }
        
        
        
        List<CarritoDetalle> detalle = new ArrayList<CarritoDetalle>();
        for(Carrito i : lista)
        {
            Producto prod = productoService.getProductoById(i.getProducto_Id());
            CarritoDetalle det = new CarritoDetalle(i.getId(),prod.getSabor(), 1, prod.getPrecio());
            detalle.add(det);
        }
        
        model.addAttribute("carrito", detalle);        
        
        return "cartvacio";
    }
    
    
}
