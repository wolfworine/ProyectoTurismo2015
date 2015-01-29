package model;
import java.io.Serializable;
import java.util.Date;
public class Paquetes implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 122196605610613975L;
	private String codigo_paq;
	private String  id_dest;
	private String  desc_paq;
	private Date fecing_paq  ;
	private Integer estado_paq;
	private Date fecLim_paq;
	private Integer stock_paq;
	private Double precio_paq;
	private String cod_of;
	private String tipo_paq ;
	private Double  precio_paq_of ;
	
	
	
	public String getCodigo_paq() {
		return codigo_paq;
	}
	public void setCodigo_paq(String codigo_paq) {
		this.codigo_paq = codigo_paq;
	}
	public String getId_dest() {
		return id_dest;
	}
	public void setId_dest(String id_dest) {
		this.id_dest = id_dest;
	}
	public String getDesc_paq() {
		return desc_paq;
	}
	public void setDesc_paq(String desc_paq) {
		this.desc_paq = desc_paq;
	}
	public Date getFecing_paq() {
		return fecing_paq;
	}
	public void setFecing_paq(Date fecing_paq) {
		this.fecing_paq = fecing_paq;
	}
	public Integer getEstado_paq() {
		return estado_paq;
	}
	public void setEstado_paq(Integer estado_paq) {
		this.estado_paq = estado_paq;
	}
	public Date getFecLim_paq() {
		return fecLim_paq;
	}
	public void setFecLim_paq(Date fecLim_paq) {
		this.fecLim_paq = fecLim_paq;
	}
	public Integer getStock_paq() {
		return stock_paq;
	}
	public void setStock_paq(Integer stock_paq) {
		this.stock_paq = stock_paq;
	}
	public Double getPrecio_paq() {
		return precio_paq;
	}
	public void setPrecio_paq(Double precio_paq) {
		this.precio_paq = precio_paq;
	}
	public String getCod_of() {
		return cod_of;
	}
	public void setCod_of(String cod_of) {
		this.cod_of = cod_of;
	}
	public String getTipo_paq() {
		return tipo_paq;
	}
	public void setTipo_paq(String tipo_paq) {
		this.tipo_paq = tipo_paq;
	}
	public Double getPrecio_paq_of() {
		return precio_paq_of;
	}
	public void setPrecio_paq_of(Double precio_paq_of) {
		this.precio_paq_of = precio_paq_of;
	}
	
	

	
	
}
