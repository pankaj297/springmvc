package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("home/")
	public String home(Model model) {
		System.out.println("This is Home Page Load");
		model.addAttribute("name", "Pankaj Naik");
		model.addAttribute("id", 1212122);

//		 List<String> friends = Arrays.asList("Amit", "Rahul", "Priya");
//		 model.addAttribute("friends", friends);

		List<String> f = new ArrayList<String>();
		f.add("Rajesh");
		f.add("Akash");
		f.add("Chetan");
		f.add("Underi");

		model.addAttribute("friend", f);

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

	@RequestMapping({ "/help", "help/" })
	public ModelAndView help() {
		System.out.println("This is help Page Load");
		// creating Model And View objce
		ModelAndView modelAndView = new ModelAndView();

		// seting the data
		modelAndView.addObject("name", "Pankaj naik");
		modelAndView.addObject("rollnumber", 1223444);
		modelAndView.addObject("time", LocalDateTime.now());

		
		  List<Integer> list = new ArrayList<Integer>(); 
		  list.add(101);
		  list.add(102);
		  list.add(103);
		  list.add(104);
		  
		  modelAndView.addObject("num", list);
		 

		// seting the view name
		modelAndView.setViewName("help");
		return modelAndView;
	}

}
