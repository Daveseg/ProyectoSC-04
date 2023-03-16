/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.controller;


import Tarea1HTML.demo.entity.Cookie;

import Tarea1HTML.demo.service.ICookieService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class CookieController {
    
    @Autowired
    private ICookieService cookieService;
    
    @GetMapping("/cookie")
    public String index(Model model){
        List<Cookie> listaCookie = cookieService.getAllCookie();
        model.addAttribute("titulo", "Our Cookies");
        model.addAttribute("cookies", listaCookie);
        return "cookies";
    }
}
