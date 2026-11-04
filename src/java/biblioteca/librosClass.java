/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package biblioteca;

public class librosClass {

 
     int id; 
    String titulo ; 
    String autor ;
    String genero ; 
    String imagen ; 

    public librosClass() {
        
    }
    
      public librosClass(int id, String titulo, String autor, String genero, String imagen) {
        this.id = id;
        this.titulo = titulo;
        this.autor = autor;
        this.genero = genero;
        this.imagen = imagen;
    
      }
      
        public void setId(int id) {
        this.id = id;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
       public int getId() {
        return id;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getAutor() {
        return autor;
    }

    public String getGenero() {
        return genero;
    }

    public String getImagen() {
        return imagen;
    }
      
      
    
    
    
}
