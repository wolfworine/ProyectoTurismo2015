package model;

import java.io.Serializable;

public class Ofertas implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6885933998383986654L;
	private String codigo;
	private String descripcion;
	private Integer duracion;
	private Integer porcentaje;
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
	public Integer getDuracion() {
		return duracion;
	}
	public void setDuracion(Integer duracion) {
		this.duracion = duracion;
	}
	public Integer getPorcentaje() {
		return porcentaje;
	}
	public void setPorcentaje(Integer porcentaje) {
		this.porcentaje = porcentaje;
	}

	
	
	
}
