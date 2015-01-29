package action;

import java.util.List;

import model.Ofertas;
import negocio.OfertasService;
import negocio.OfertasServiceDAO;
import util.Constantes;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;


public class OfertasAction extends ActionSupport implements Preparable{
	
	private static final long serialVersionUID = -3268883425542327144L;
	
	private List<Ofertas>Lofertas;
	private Ofertas ofertas=new Ofertas();

	private OfertasService ofertasService= new OfertasServiceDAO();

	public List<Ofertas> getLofertas() {
		return Lofertas;
	}


	public void setLofertas(List<Ofertas> lofertas) {
		Lofertas = lofertas;
	}


	public Ofertas getOfertas() {
		return ofertas;
	}


	public void setOfertas(Ofertas ofertas) {
		this.ofertas = ofertas;
	}

	public String buscar() throws Exception{
		Lofertas=ofertasService.buscar(ofertas);
		return SUCCESS;
	}

	public String eliminar() throws Exception{
		ofertasService.eliminar(ofertas.getCodigo());
		
		String[] params=new String[]{
				getText(Constantes.MODULO_OFERTAS),
				ofertas.getCodigo().toString()};
		
		addActionMessage(getText(Constantes.MENSAJE_DELETE_OK,params));
		
		return SUCCESS;
	}
	
    public String editar() throws Exception{
		if(ofertas.getCodigo()==null){
			
		
			
			ofertasService.registrar(ofertas);

			String[] params=new String[]{getText(Constantes.MODULO_OFERTAS)};
			
			addActionMessage(getText(Constantes.MENSAJE_INSERT_OK,params));
			
		}else{
			ofertasService.actualizar(ofertas);
			String[] params=new String[]{
					getText(Constantes.MODULO_OFERTAS),
					ofertas.getCodigo().toString()};
			
			addActionMessage(getText(Constantes.MENSAJE_UPDATE_OK,params));
		}
		
		return SUCCESS;
	}

	public String detalle() throws Exception{
		ofertas=ofertasService.obtenerDetalle(ofertas.getCodigo());
		
		
		
		return SUCCESS;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		

		if(ofertas.getCodigo()!=null)
			ofertas=ofertasService.obtener(ofertas.getCodigo());

		
	}

	
}
