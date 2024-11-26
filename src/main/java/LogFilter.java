package filter;

import jakarta.servlet.*;
import jakarta.servlet.*;
import java.util.*;
import java.text.DateFormat.*;
import java.text.SimpleDateFormat;

public class LogFilter implements Filter {
	
	public void init(FilterConfig config) throws ServletException {
		System.out.println("BookMartket 초기화....");
	}
	
	public void doFilter(ServletRequest, ServletResponse redponse, FilterChain chain) throws java.io.IOExcertion, ServletException {
		System.out.println("접속한 클라이언트 IP : " + request.getRemoteAddr());
		long start = System.currentTimeMillis();
		System.
	}
}
