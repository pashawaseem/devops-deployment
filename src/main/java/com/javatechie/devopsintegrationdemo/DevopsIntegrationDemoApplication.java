package com.javatechie.devopsintegrationdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DevopsIntegrationDemoApplication {

	public String message(){return "welcome to springboot application";}

	public static void main(String[] args) {
		SpringApplication.run(DevopsIntegrationDemoApplication.class, args);
	}

}
