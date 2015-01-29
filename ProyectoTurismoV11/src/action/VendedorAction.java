package action;

import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.IOUtils;

import util.Constantes;
import negocio.DistritoService;
import negocio.DistritoServiceDAO;
import negocio.VendedorService;
import negocio.VendedorServiceDAO;
import model.Distrito;
import model.Vendedor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;


public class VendedorAction extends ActionSupport implements Preparable{
	
	private static final long serialVersionUID = -3268883425542327144L;
	
	private List<Vendedor> vendedores;
	private Vendedor vendedor=new Vendedor();
	private File foto;

	private List<Distrito> distritos;
	private Map<String, String> generos;

	private VendedorService vendedorService= new VendedorServiceDAO();

	public Vendedor getVendedor() {
		return vendedor;
	}

	public void setVendedor(Vendedor vendedor) {
		this.vendedor = vendedor;
	}

	public List<Vendedor> getVendedores() {
		return vendedores;
	}

	public void setVendedores(List<Vendedor> vendedores) {
		this.vendedores = vendedores;
	}
	
	public List<Distrito> getDistritos() {
		return distritos;
	}

	public Map<String, String> getGeneros() {
		return generos;
	}

	
	public File getFoto() {
		return foto;
	}

	public void setFoto(File foto) {
		this.foto = foto;
	}
	
	public String buscar() throws Exception{
		vendedores=vendedorService.buscar(vendedor);
		return SUCCESS;
	}
	
	public String editar() throws Exception{
		if(vendedor.getCodigo()==null){
			
			if(foto!=null){
				vendedor.setFoto(IOUtils.toByteArray(new FileInputStream(foto)));
			}
			
			vendedorService.registrar(vendedor);

			String[] params=new String[]{getText(Constantes.MODULO_VENDEDOR)};
			
			addActionMessage(getText(Constantes.MENSAJE_INSERT_OK,params));
			
		}else{
			vendedorService.actualizar(vendedor);
			String[] params=new String[]{
					getText(Constantes.MODULO_VENDEDOR),
					vendedor.getCodigo().toString()};
			
			addActionMessage(getText(Constantes.MENSAJE_UPDATE_OK,params));
		}
		
		return SUCCESS;
	}
	
	public String eliminar() throws Exception{
		vendedorService.eliminar(vendedor.getCodigo());
		
		String[] params=new String[]{
				getText(Constantes.MODULO_VENDEDOR),
				vendedor.getCodigo().toString()};
		
		addActionMessage(getText(Constantes.MENSAJE_DELETE_OK,params));
		
		return SUCCESS;
	}
	

	public String detalle() throws Exception{
		vendedor=vendedorService.obtenerDetalle(vendedor.getCodigo());
		
		ActionContext.getContext().getSession().put("foto", vendedor.getFoto());
		
		return SUCCESS;
	}
	
	
	@Override
	public void prepare() throws Exception {
		
		DistritoService distritoService=new DistritoServiceDAO();
		distritos=distritoService.getTodos();
		
		generos= new HashMap<String, String>();
		generos.put(Constantes.GENERO_FEMENINO_COD, getText(Constantes.GENERO_FEMENINO_DES));
		generos.put(Constantes.GENERO_MASCULINO_COD, getText(Constantes.GENERO_MASCULINO_DES));
		
		if(vendedor.getCodigo()!=null)
			vendedor=vendedorService.obtener(vendedor.getCodigo());
		
	}
}
