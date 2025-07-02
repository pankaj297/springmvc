package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/form")
public class FormController {

	@GetMapping("")
	public String showForm(Model m) {
		m.addAttribute("head", "Spring MVC Registeration");
		return "form";
	}
	
	/* @RequestMapping(path = "/submitForm", method= RequestMethod.POST) */
	@PostMapping("/submitForm") 
	public String submitForm(@ModelAttribute User user, Model model) {
		return "result"; //jsp ouput page
		
	}
}
