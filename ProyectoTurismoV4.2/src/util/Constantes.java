package util;

public interface Constantes {

	public static final String MENSAJE_LOGIN_VALIDACION="error.login.credenciales";
	public static final String MENSAJE_LOGIN_EXITO="info.principal.fecha.acceso";
	public static final String MENSAJE_INSERT_OK="info.resultado.registro";
	public static final String MENSAJE_UPDATE_OK="info.resultado.actualizacion"; 
	public static final String MENSAJE_DELETE_OK="info.resultado.eliminacion";
	
	//grupo de datos que no cambian su valor con frecuencia 
	//obs:tambien pueden obtenerse desde alguna fuente de datos, por ejemplo una tabla de base de datos
	public static final String GENERO_MASCULINO_COD="M";
	public static final String GENERO_FEMENINO_COD="F";
	public static final String GENERO_MASCULINO_DES="genero.masculino";
	public static final String GENERO_FEMENINO_DES="genero.femenino";
	public static final String EC_CASADO_COD="C1";
	public static final String EC_SOLTERO_COD="S1";
	public static final String EC_CASADO_DES="estadoCivil.casado";
	public static final String EC_SOLTERO_DES="estadoCivil.soltero";
	
	public static final String MODULO_USUARIO="modulo.usuario";
	public static final String MODULO_EMPLEADO="modulo.empleado";
	public static final String MODULO_VENDEDOR="modulo.vendedor";
	
}
