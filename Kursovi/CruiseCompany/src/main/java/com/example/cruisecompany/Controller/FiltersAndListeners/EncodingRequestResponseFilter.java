package com.example.cruisecompany.Controller.FiltersAndListeners;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/*")
public class EncodingRequestResponseFilter implements Filter {

    private static final Logger LOG = LoggerFactory.getLogger(EncodingRequestResponseFilter.class);

    @Override
    public void doFilter(ServletRequest req,
                         ServletResponse resp,
                         FilterChain filterChain)
            throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        LOG.info("Encoding UTF-8");
        filterChain.doFilter(req, resp);
    }
}
