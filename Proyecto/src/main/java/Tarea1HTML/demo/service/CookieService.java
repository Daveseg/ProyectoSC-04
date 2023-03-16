/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Cookie;
import Tarea1HTML.demo.repository.CookieRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CookieService implements ICookieService{
    
    @Autowired
    private CookieRepository cookieRepository;

    @Override
    public List<Cookie> getAllCookie() {
        return (List<Cookie>)cookieRepository.findAll();
    }

    @Override
    public Cookie getCookieById(long id) {
        return cookieRepository.findById(id).orElse(null);
    }

    @Override
    public void saveCookie(Cookie cookie) {
        cookieRepository.save(cookie);
    }

    @Override
    public void delete(long id) {
        cookieRepository.deleteById(id);
    }
    
}
