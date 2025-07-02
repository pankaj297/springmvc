package mvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home(Model model) {
	    model.addAttribute("message", "Hello from Spring MVC!");
	    return "index";
	}
	
	@RequestMapping("/about")
	public String about(Model model) {
		model.addAttribute("hello", "I am Pankaj..!");
		return "about";
		
	}
	
	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("This is help page load..!");
		//creating model and view
		ModelAndView mv = new ModelAndView("help");
		
		//seting the data
		mv.addObject("name", "Pankaj Naik...!");
		mv.addObject("rollnumber", 12345);
		LocalDateTime now = LocalDateTime.now();
		mv.addObject("time", now);
		
		List<Integer> list = new ArrayList<Integer>();
		list.add(101);
		list.add(102);
		list.add(103);
		list.add(104);
		list.add(107);
		list.add(108);
		mv.addObject("id", list);
		
		return mv;
		
	}
}



