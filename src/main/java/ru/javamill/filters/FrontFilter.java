package ru.javamill.filters;

import javax.servlet.*;
import java.io.IOException;

public class FrontFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest req, ServletResponse res, FilterChain filterChain) throws IOException, ServletException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("index.jsp");
        try {
            requestDispatcher.forward(req, res);
        } catch (ServletException e) {
        } catch (IOException e) {
        }
    }

    public void destroy() {

    }
}
