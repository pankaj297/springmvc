package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ReController {

	@RequestMapping("/one")
	public RedirectView one() {
		System.out.println("This is one page load..!");
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("enjoy");
		return redirectView;
		
	}
	
	@RequestMapping("/enjoy")
	public String enjoy() {
		System.out.println("This is enjoy page load...!");
		return "form";
	}
}
