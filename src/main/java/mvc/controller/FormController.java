package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.model.User;
import mvc.service.UserService;


@Controller
@RequestMapping("/form")
public class FormController {
	
	@Autowired
	private UserService userService;

	@GetMapping("")
	public String showForm(Model m) {
		m.addAttribute("head", "Spring MVC Registeration");
		return "form";
	}
	
	/* @RequestMapping(path = "/submitForm", method= RequestMethod.POST) */
	@PostMapping("/submitForm") 
	public String submitForm(@ModelAttribute User user, Model model) {
		System.out.println(user);
		int cUser = this.userService.createUser(user);
		model.addAttribute("msg", "User created Successfully with Id :" + cUser);
		return "result"; //jsp ouput page
		
	}
}
