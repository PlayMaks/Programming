package com.example.cruisecompany.Controller.FiltersAndListeners;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(urlPatterns = "/*")
public class LangFilter implements Filter {

    private static final Logger LOG = LoggerFactory.getLogger(LangFilter.class);

    @Override
    public void doFilter(ServletRequest req,
                         ServletResponse resp,
                         FilterChain filterChain)
            throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest) req).getSession();
        if (session.getAttribute("lang") == null) {
            session.setAttribute("lang", "en");
        }
        LOG.info("Lang filter executed");
        filterChain.doFilter(req, resp);
    }
}
