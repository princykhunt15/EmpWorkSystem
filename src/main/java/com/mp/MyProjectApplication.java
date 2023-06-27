package com.mp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.mp")
public class MyProjectApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(MyProjectApplication.class, args);
		
		
	}

}
