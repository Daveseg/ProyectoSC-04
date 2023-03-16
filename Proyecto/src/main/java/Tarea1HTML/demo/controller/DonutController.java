/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.controller;

import Tarea1HTML.demo.entity.Donut;
import Tarea1HTML.demo.service.IDonutService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class DonutController {
    
    @Autowired
    private IDonutService donutService;
    
    @GetMapping("/donut")
    public String index(Model model){
        List<Donut> listaDonut = donutService.getAllDonut();
        model.addAttribute("titulo", "Our Donuts");
        model.addAttribute("donuts", listaDonut);
        return "donuts";
    }
}
