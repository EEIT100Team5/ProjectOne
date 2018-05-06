package com.iii.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan("com.iii")
public class WebAppConfig extends WebMvcConfigurerAdapter {
	@Bean
	public ViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("UTF-8");
		resolver.setMaxUploadSize(81920000);
		return resolver;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/views/global/css/");
//		registry.addResourceHandler("/image/**").addResourceLocations("/WEB-INF/views/images/");
		registry.addResourceHandler("/global/**").addResourceLocations("/WEB-INF/views/global/");
		registry.addResourceHandler("/videoManage/**").addResourceLocations("/WEB-INF/views/videoManage/");
		registry.addResourceHandler("/videoRoomdeco/**").addResourceLocations("/WEB-INF/views/videoRoom/");
		registry.addResourceHandler("/watchHistory/**").addResourceLocations("/WEB-INF/views/watchHistory/");
 		registry.addResourceHandler("/marketIndex/**").addResourceLocations("/WEB-INF/views/marketIndex/");
 		registry.addResourceHandler("/videoType/**").addResourceLocations("/WEB-INF/views/videoType/");

//		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/views/marketIndex/css/");
//		registry.addResourceHandler("/global/vendor/bootstrap/css/**").addResourceLocations("/WEB-INF/views/global/vendor/bootstrap/css/");

	}
}
