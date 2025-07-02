<!-- package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/form")
public class FormController {

	@GetMapping("")
	public String showForm() {
		return "form";
		
	}
	
	/* @RequestMapping(path = "/submitForm", method= RequestMethod.POST) */
	@PostMapping("/submitForm") 
	public String submitForm(
			@RequestParam String name,
			@RequestParam String email,
			@RequestParam String password,
			@RequestParam String gender,
			@RequestParam String country,
			@RequestParam(required = false) String agreed,
			Model model) {
		
		
		 User  user = new User();
		 user.setName(name);
		 user.setEmail(email);
		 user.setPassword(password);
		 user.setGender(gender);
		 user.setCountry(country);
		 user.setAgreed(false);
		 
		 System.out.println(user);
		 
		 model.addAttribute("user", user);
		 
//		    model.addAttribute("name", name);
//	        model.addAttribute("email", email);
//	        model.addAttribute("password", password);
//	        model.addAttribute("gender", gender);
//	        model.addAttribute("country", country);
//	        model.addAttribute("agreed", agreed != null ? "Yes" : "No");
		
		return "result"; //jsp ouput page
		
	}
}
 -->