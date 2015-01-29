package action;

import java.util.List;

import model.Pagos;
import negocio.PagosService;
import negocio.PagosServiceDAO;
import util.Constantes;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;


public class PagosAction extends ActionSupport implements Preparable{
	
	private static final long serialVersionUID = -3268883425542327144L;
	
	private List<Pagos> Lpagos;
	private Pagos pagos=new Pagos();

	private PagosService pagosService= new PagosServiceDAO();
	public List<Pagos> getLpagos() {
		return Lpagos;
	}



	public void setLpagos(List<Pagos> lpagos) {
		Lpagos = lpagos;
	}



	public Pagos getPagos() {
		return pagos;
	}



	public void setPagos(Pagos pagos) {
		this.pagos = pagos;
	}



	

    public String buscar() throws Exception{
		Lpagos=pagosService.buscar(pagos);
		return SUCCESS;
	}

    public String editar() throws Exception{
		if(pagos.getCodigo_ven()==null){
			
		
			
			pagosService.registrar(pagos);

			String[] params=new String[]{getText(Constantes.MODULO_PAGOS)};
			
			addActionMessage(getText(Constantes.MENSAJE_INSERT_OK,params));
			
		}else{
			pagosService.actualizar(pagos);
			String[] params=new String[]{
					getText(Constantes.MODULO_PAGOS),
					pagos.getCodigo_ven().toString()};
			
			addActionMessage(getText(Constantes.MENSAJE_UPDATE_OK,params));
		}
		
		return SUCCESS;
	}


	public String eliminar() throws Exception{
		pagosService.eliminar(pagos.getCodigo_ven());
		
		String[] params=new String[]{
				getText(Constantes.MODULO_PAGOS),
				pagos.getCodigo_ven().toString()};
		
		addActionMessage(getText(Constantes.MENSAJE_DELETE_OK,params));
		
		return SUCCESS;
	}
	

	public String detalle() throws Exception{
		pagos=pagosService.obtenerDetalle(pagos.getCodigo_ven());

		return SUCCESS;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
		if(pagos.getCodigo_ven()!=null)
			pagos=pagosService.obtener(pagos.getCodigo_ven());

	}

}
