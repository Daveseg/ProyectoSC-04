/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 *
 * @author david
 */

@Entity
@Table(name ="Factura" )
public class Factura implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long Recibo;
    private LocalDateTime Fecha;
    private long usuario_id;
    private long sucursal_id;

    public long getRecibo() {
        return Recibo;
    }

    public void setRecibo(long Recibo) {
        this.Recibo = Recibo;
    }

    public LocalDateTime getFecha() {
        return Fecha;
    }

    public void setFecha(LocalDateTime Fecha) {
        this.Fecha = Fecha;
    }

    public long getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(long usuario_id) {
        this.usuario_id = usuario_id;
    }

    public long getSucursal_id() {
        return sucursal_id;
    }

    public void setSucursal_id(long sucursal_id) {
        this.sucursal_id = sucursal_id;
    }
    
    
}
