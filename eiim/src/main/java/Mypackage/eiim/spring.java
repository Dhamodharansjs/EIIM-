package Mypackage.eiim;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
 public class spring {
	
	@GetMapping("/hello")
    public String hello() {
        return "Hello Eiim Team";
    }

}
