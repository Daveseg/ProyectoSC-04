/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.controller;

import Tarea1HTML.demo.entity.Producto;
import Tarea1HTML.demo.service.IProductoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class CakeController {
    
//    @Autowired
//    private ICakeService cakeCakeService;
    
    @Autowired
    private IProductoService productoService;
    
    @GetMapping("/cake")
    public String index(Model model){
        List<Producto> listaCake = productoService.getAllProductobyTipo(3);
        model.addAttribute("titulo", "Our Cakes");
        model.addAttribute("cakes", listaCake);
        return "cakes";
    }
}
