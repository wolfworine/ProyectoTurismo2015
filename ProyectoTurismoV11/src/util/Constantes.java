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
	
	

	
	public static final String TIPO_AEREO_COD="Aereo";
	public static final String TIPO_ESTANDAR_COD="Estandar";
	public static final String TIPO_AEREO_DES="Aereo";
	public static final String TIPO_ESTANDAR_DES="Estandar";
	
	
	public static final int ESTADO_ACTIVO_COD=1;
	public static final int ESTADO_INACTIVO_COD=0;
	public static final String ESTADO_ACTIVO_DES="estado.activo";
	public static final String ESTADO_INACTIVO_DES="estado.inactivo";
	
	public static final String EC_CASADO_COD="C1";
	public static final String EC_SOLTERO_COD="S1";
	public static final String EC_CASADO_DES="estadoCivil.casado";
	public static final String EC_SOLTERO_DES="estadoCivil.soltero";
	
	public static final String MODULO_USUARIO="modulo.usuario";
	public static final String MODULO_EMPLEADO="modulo.empleado";
	public static final String MODULO_VENDEDOR="modulo.vendedor";
	public static final String MODULO_CLIENTE="modulo.cliente";
	public static final String MODULO_PAGOS="modulo.pagos";
	public static final String MODULO_PAQUETES="modulo.paquetes";
	public static final String MODULO_OFERTAS="modulo.ofertas";
	
}
