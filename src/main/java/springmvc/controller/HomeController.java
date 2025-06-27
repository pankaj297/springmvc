package springmvc.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("home/")
	public String home(Model model) {
		System.out.println("This is Home Page Load");
		model.addAttribute("name", "Pankaj Naik");
		model.addAttribute("id", 1212122);

		/*
		 * List<String> friends = Arrays.asList("Amit", "Rahul", "Priya");
		 * model.addAttribute("friends", friends);
		 */

	
		List<String> f = new ArrayList<String>(); 
		f.add("Rajesh"); 
		f.add("Akash");
		f.add("Chetan"); 
		f.add("Underi"); 
		
		model.addAttribute("friends",f);
		
		return "index";
	}

	@RequestMapping("about/")
	public String about() {
		System.out.println("This is About Page Load");
		return "about";
	}

	@RequestMapping("services/")
	public String services() {
		System.out.println("This is services Page Load");
		return "services";
	}

	@RequestMapping("help/")
	public String help() {
		System.out.println("This is help Page Load");
		return "help";
	}

}
