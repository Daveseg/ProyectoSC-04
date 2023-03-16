/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.controller;

import Tarea1HTML.demo.entity.Snack;
import Tarea1HTML.demo.service.ISnackService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SnackController {
    
    @Autowired
    private ISnackService snackService;
    
    @GetMapping("/snack")
    public String index(Model model){
        List<Snack> listaSnack = snackService.getAllSnack();
        model.addAttribute("titulo", "Our Snacks");
        model.addAttribute("snacks", listaSnack);
        return "snacks";
    }
    
}
