package com.klef.jfsd.springboot;

import org.hibernate.internal.build.AllowSysOut;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.klef.jfsd.springboot")
public class SpringBootSdpProjectApplication {
   
	
	public static void main(String[] args) {
		SpringApplication.run(SpringBootSdpProjectApplication.class, args);
		System.out.println("SDP Project 4");
		
	}

}
