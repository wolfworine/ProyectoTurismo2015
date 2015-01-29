package action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class FotoAction extends ActionSupport implements SessionAware{

	private static final long serialVersionUID = -4090989572003832489L;
	private InputStream foto;
	private SessionMap<String, Object> sessionMap;
	
	public String execute(){
		byte[] foto=(byte[])sessionMap.get("foto");
		InputStream is=new ByteArrayInputStream(foto);
		setFoto(is);
		sessionMap.remove("foto");
		return SUCCESS;
	}

	public InputStream getFoto() {
		return foto;
	}

	public void setFoto(InputStream foto) {
		this.foto = foto;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		sessionMap=(SessionMap<String, Object>)arg0;
		
	}
	

}
