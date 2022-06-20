package com.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("com.demo")
public class WebMvcConfig {
	@Bean(name = "viewResolverr")
	public InternalResourceViewResolver getViewResolver() {
	    InternalResourceViewResolver viewResolverr = new InternalResourceViewResolver();
	    viewResolverr.setPrefix("/");
	    viewResolverr.setSuffix(".jsp");
	    return viewResolverr;
	}
}
