package model;

import java.io.Serializable;
import java.util.Date;

public class Pagos implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3669611032503862751L;
	private String codigo_ven; 
	private String codigo_paq; 
	private String descripcion_ven; 
	private Date fecha_ven; 
	private String codigo_cli;
	public String getCodigo_ven() {
		return codigo_ven;
	}
	public void setCodigo_ven(String codigo_ven) {
		this.codigo_ven = codigo_ven;
	}
	public String getCodigo_paq() {
		return codigo_paq;
	}
	public void setCodigo_paq(String codigo_paq) {
		this.codigo_paq = codigo_paq;
	}
	public String getDescripcion_ven() {
		return descripcion_ven;
	}
	public void setDescripcion_ven(String descripcion_ven) {
		this.descripcion_ven = descripcion_ven;
	}
	public Date getFecha_ven() {
		return fecha_ven;
	}
	public void setFecha_ven(Date fecha_ven) {
		this.fecha_ven = fecha_ven;
	}
	public String getCodigo_cli() {
		return codigo_cli;
	}
	public void setCodigo_cli(String codigo_cli) {
		this.codigo_cli = codigo_cli;
	}

	
	
	
	
}
