package interceptor;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class CronometroInterceptor implements Interceptor{
	
	private static final long serialVersionUID = -3995934949117455140L;
	Logger logger=Logger.getLogger(CronometroInterceptor.class);
	
	@Override
	public void destroy() {}

	@Override
	public void init() {}

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		
		//pre-procesamiento
		long inicio=System.currentTimeMillis();
		
		String actionMapping=arg0.getProxy().getActionName();
		String actionClass=arg0.getAction().getClass().getName();
		
		String result=arg0.invoke();
		
		//post-procesamiento
		long fin=System.currentTimeMillis();	
		long tiempo= fin-inicio;
		logger.info("ActionMapping: "+actionMapping+
					" ActionClass:"+actionClass+
					" Tiempo: "+tiempo+"ms.");
		
		return result;
	}

}
