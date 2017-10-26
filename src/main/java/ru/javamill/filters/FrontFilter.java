package ru.javamill.filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class FrontFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest req, ServletResponse res, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest httpServletRequest = (HttpServletRequest) req;
        String path = httpServletRequest.getRequestURI();
        if (path.startsWith("/static")) {
            filterChain.doFilter(req, res);
            return;
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/");
        try {
            requestDispatcher.forward(req, res);
        } catch (ServletException e) {
        } catch (IOException e) {
        }
    }

    public void destroy() {

    }
}
