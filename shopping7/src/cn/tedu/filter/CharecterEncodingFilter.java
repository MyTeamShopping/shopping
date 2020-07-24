package cn.tedu.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharecterEncodingFilter  implements Filter {
	
	private static String charecter;
	@Override
	public void init(FilterConfig config) throws ServletException {
		charecter=       config.getInitParameter("charecter");
		if(charecter==null||charecter.equals("")){
			  charecter="utf-8";
		}   
	}
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		       
		req.setCharacterEncoding(charecter);
		 chain.doFilter(req, resp);
	}
	@Override
	public void destroy() {
		
	}

	

	

}
