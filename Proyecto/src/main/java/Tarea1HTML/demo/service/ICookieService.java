/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.service;

import Tarea1HTML.demo.entity.Cookie;
import java.util.List;


public interface ICookieService {
    public List<Cookie> getAllCookie();
    public Cookie getCookieById(long id);
    public void saveCookie(Cookie cookie);
    public void delete(long id);
}
