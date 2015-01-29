package model;

import java.io.Serializable;


public class Distrito implements Serializable{
	
	private static final long serialVersionUID = -4046661442446784448L;
	
	private String codigo;
	private String descripcion;
	
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	
	
}
