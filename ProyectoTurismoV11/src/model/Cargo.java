package model;

import java.io.Serializable;
import java.util.List;

public class Cargo implements Serializable {

	private static final long serialVersionUID = -7288249404192708483L;
	
	private String codigo;
	private String descripcion;

	// relacion con Empleado
	private List<Usuario> usuario;
	
	

	public List<Usuario> getUsuario() {
		return usuario;
	}

	public void setUsuario(List<Usuario> usuario) {
		this.usuario = usuario;
	}	

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