package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	@RequestMapping("/")
  public String home() {
    return "<!DOCTYPE html>\n" +
	"<html>\n" +
	"<head>\n" +
	"    <title>Welcome to My Website</title>\n" +
	"    <style>\n" +
	"        body {\n" +
	"            background-image: url('image.jpg');\n" +
	"            background-size: cover;\n" +
	"            background-repeat: no-repeat;\n" +
	"            background-position: center;\n" +
	"            height: 100vh;\n" +
	"            display: flex;\n" +
	"            justify-content: center;\n" +
	"            align-items: center;\n" +
	"            font-family: Arial, sans-serif;\n" +
	"            color: white;\n" +
	"            font-size: 24px;\n" +
	"        }\n" +
	"    </style>\n" +
	"</head>\n" +
	"<body>\n" +
	"    <h1>Hello Dishone! Your project has built successfully✌️</h1>\n" +
	"</body>\n" +
	"</html>";
  }
}