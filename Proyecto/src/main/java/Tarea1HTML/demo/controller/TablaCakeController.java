/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.controller;

import Tarea1HTML.demo.entity.TablaCake;
import Tarea1HTML.demo.service.ICakeService;
import Tarea1HTML.demo.service.ITablaCakeService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author jcga5
 */
@Controller
public class TablaCakeController {
    
    @Autowired
    private ITablaCakeService tablaCakeService;
    
    @Autowired
    private ICakeService cakeService;
    
    @GetMapping("/cake")
    public String index(Model model){
        List<TablaCake> listaTablaCake = tablaCakeService.getAllTablaCake();
        model.addAttribute("titulo", "Our Cakes");
        model.addAttribute("tablacakes", listaTablaCake);
        return "tablaCakes";
    }
    
}
