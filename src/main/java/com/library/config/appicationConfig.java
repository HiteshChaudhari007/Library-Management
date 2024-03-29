package com.library.config;

import java.util.Properties;

import org.hibernate.cfg.Environment;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

import com.library.model.Book;

@Configuration
@ComponentScan(basePackages = "com.library")
public class appicationConfig {

	@Bean
	public DriverManagerDataSource ds() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/library");
		ds.setUsername("root");
		ds.setPassword("root");
		return ds;
	}

	@Bean
	public LocalSessionFactoryBean sf() {
		LocalSessionFactoryBean lb = new LocalSessionFactoryBean();
		lb.setDataSource(ds());

		Properties setting = new Properties();
		setting.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");
		setting.put(Environment.HBM2DDL_AUTO, "update");
		setting.put(Environment.SHOW_SQL, "true");
		setting.put(Environment.FORMAT_SQL, "true");

		lb.setHibernateProperties(setting);
		lb.setAnnotatedClasses(Book.class);
		return lb;
	}
}
