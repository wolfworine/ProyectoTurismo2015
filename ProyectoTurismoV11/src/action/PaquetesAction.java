package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Paquetes;
import negocio.PaquetesService;
import negocio.PaquetesServiceDAO;
import util.Constantes;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;


public class PaquetesAction extends ActionSupport implements Preparable{
	
	private static final long serialVersionUID = -3268883425542327144L;
	
	private List<Paquetes> Lpaquetes;
	private Paquetes paquetes=new Paquetes();
	
	private Map<Integer, String> estados;
    
	private Map<String, String> tipos; 
    


	public Map<String, String> getTipos() {
		return tipos;
	}



	public void setTipos(Map<String, String> tipos) {
		this.tipos = tipos;
	}



	public Map<Integer, String> getEstados() {
		return estados;
	}



	public void setEstados(Map<Integer, String> estados) {
		this.estados = estados;
	}



	public PaquetesService getPaquetesService() {
		return paquetesService;
	}



	public void setPaquetesService(PaquetesService paquetesService) {
		this.paquetesService = paquetesService;
	}

	private PaquetesService paquetesService= new PaquetesServiceDAO();



    public List<Paquetes> getLpaquetes() {
		return Lpaquetes;
	}



	public void setLpaquetes(List<Paquetes> lpaquetes) {
		Lpaquetes = lpaquetes;
	}



	public Paquetes getPaquetes() {
		return paquetes;
	}



	public void setPaquetes(Paquetes paquetes) {
		this.paquetes = paquetes;
	}



	public String buscar() throws Exception{
		Lpaquetes=paquetesService.buscar(paquetes);
		return SUCCESS;
	}

    public String editar() throws Exception{
		if(paquetes.getCodigo_paq()==null){
			
			
			paquetesService.registrar(paquetes);

			String[] params=new String[]{getText(Constantes.MODULO_PAQUETES)};
			
			addActionMessage(getText(Constantes.MENSAJE_INSERT_OK,params));
			
		}else{
			paquetesService.actualizar(paquetes);
			String[] params=new String[]{
					getText(Constantes.MODULO_PAQUETES),
					paquetes.getCodigo_paq().toString()};
			
			addActionMessage(getText(Constantes.MENSAJE_UPDATE_OK,params));
		}
		
		return SUCCESS;
	}



	public String eliminar() throws Exception{
		paquetesService.eliminar(paquetes.getCodigo_paq());
		
		String[] params=new String[]{
				getText(Constantes.MODULO_PAQUETES),
				paquetes.getCodigo_paq().toString()};
		
		addActionMessage(getText(Constantes.MENSAJE_DELETE_OK,params));
		
		return SUCCESS;
	}
	

	public String detalle() throws Exception{
		paquetes=paquetesService.obtenerDetalle(paquetes.getCodigo_paq());
		
	
		return SUCCESS;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
		estados= new HashMap<Integer, String>();
		estados.put(Constantes.ESTADO_ACTIVO_COD, getText(Constantes.ESTADO_ACTIVO_DES));
		estados.put(Constantes.ESTADO_INACTIVO_COD, getText(Constantes.ESTADO_INACTIVO_DES));
		
		tipos= new HashMap<String, String>();
		tipos.put(Constantes.TIPO_ESTANDAR_COD, getText(Constantes.TIPO_ESTANDAR_DES));
		tipos.put(Constantes.TIPO_AEREO_COD, getText(Constantes.TIPO_AEREO_DES));
		
		
		
		if(paquetes.getCodigo_paq()!=null)
			paquetes=paquetesService.obtener(paquetes.getCodigo_paq());
	}

	
}
