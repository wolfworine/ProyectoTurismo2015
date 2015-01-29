package model;

import java.io.Serializable;

public class Vendedor implements Serializable{
		
	private static final long serialVersionUID = 4335467048540752840L;
	
	private Integer codigo;
	private String nombre;
	private String apellido;
	private String genero;
	private Distrito distrito; 
	private byte[] foto;

	
	public Integer getCodigo() {
		return codigo;
	}
	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public Distrito getDistrito() {
		return distrito;
	}
	public void setDistrito(Distrito distrito) {
		this.distrito = distrito;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public  byte[]  getFoto() {
		return foto;
	}
	public void setFoto( byte[]  foto) {
		this.foto = foto;
	}

	
}
