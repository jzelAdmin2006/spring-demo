package tech.bison.trainee;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

	@GetMapping("/")
	public String helloWorld() {
		return "Hello, Spring Boot hosting world!";
	}
}
