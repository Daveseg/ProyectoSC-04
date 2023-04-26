/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tarea1HTML.demo.entity;

/**
 *
 * @author david
 */
public class CarritoDetalle {
    private long IdCarrito;
    private String Producto;
    private long Cantidad;
    private String Precio;

    public CarritoDetalle(long IdCarrito, String Producto, long Cantidad, String Precio) {
        this.IdCarrito = IdCarrito;
        this.Producto = Producto;
        this.Cantidad = Cantidad;
        this.Precio = Precio;
    }

    public long getIdCarrito() {
        return IdCarrito;
    }

    public void setIdCarrito(long IdCarrito) {
        this.IdCarrito = IdCarrito;
    }

    public String getProducto() {
        return Producto;
    }

    public void setProducto(String Producto) {
        this.Producto = Producto;
    }

    public long getCantidad() {
        return Cantidad;
    }

    public void setCantidad(long Cantidad) {
        this.Cantidad = Cantidad;
    }

    public String getPrecio() {
        return Precio;
    }

    public void setPrecio(String Precio) {
        this.Precio = Precio;
    }

    

    
    
}
