package quanlynhansu.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import quanlynhansu.model.dto.NghiPhepDTO;
import quanlynhansu.service.INghiPhepService;
@Controller
@RequestMapping("/nghiphepController")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class NghiPhepController {
	@Autowired
	private INghiPhepService NghiPhepService;

	@GetMapping("/show")
	public String show() {
	 
		  org.springframework.security.core.Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		    // Retrieve authorities
		    List<String> authorities = authentication.getAuthorities().stream()
		            .map(GrantedAuthority::getAuthority)
		            .collect(Collectors.toList());

		    // Retrieve roles (assuming roles are prefixed with "ROLE_")
		    List<String> roles = authentication.getAuthorities().stream()
		            .filter(auth -> auth.getAuthority().startsWith("ROLE_"))
		            .map(auth -> auth.getAuthority().substring(5)) // Remove "ROLE_" prefix
		            .collect(Collectors.toList());
	    ModelAndView model = new ModelAndView("nghiphep");
	    model.addObject("authorities", authorities);
	    model.addObject("roles", roles);
	    // Trả về ModelAndView
		return "nghiphep";
	}
	@GetMapping("/xinnghi")
	public String show2() {
	 
		  org.springframework.security.core.Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		    // Retrieve authorities
		    List<String> authorities = authentication.getAuthorities().stream()
		            .map(GrantedAuthority::getAuthority)
		            .collect(Collectors.toList());

		    // Retrieve roles (assuming roles are prefixed with "ROLE_")
		    List<String> roles = authentication.getAuthorities().stream()
		            .filter(auth -> auth.getAuthority().startsWith("ROLE_"))
		            .map(auth -> auth.getAuthority().substring(5)) // Remove "ROLE_" prefix
		            .collect(Collectors.toList());
	    ModelAndView model = new ModelAndView("form/nghiphepnvForm");
	    model.addObject("authorities", authorities);
	    model.addObject("roles", roles);
	    // Trả về ModelAndView
		return "form/nghiphepnvForm";
	}
	@GetMapping("/nghiphep")
	public String show1() {
	 
		  org.springframework.security.core.Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		    // Retrieve authorities
		    List<String> authorities = authentication.getAuthorities().stream()
		            .map(GrantedAuthority::getAuthority)
		            .collect(Collectors.toList());

		    // Retrieve roles (assuming roles are prefixed with "ROLE_")
		    List<String> roles = authentication.getAuthorities().stream()
		            .filter(auth -> auth.getAuthority().startsWith("ROLE_"))
		            .map(auth -> auth.getAuthority().substring(5)) // Remove "ROLE_" prefix
		            .collect(Collectors.toList());
	    ModelAndView model = new ModelAndView("nghiphepnv");
	    model.addObject("authorities", authorities);
	    model.addObject("roles", roles);
	    // Trả về ModelAndView
		return "nghiphepnv";
	}
	@RequestMapping(value = "/delete/{pK}", method = RequestMethod.DELETE)
	public String delete(@PathVariable Integer pK) {
		NghiPhepService.delete(pK);
		return "nghiphep";
	}

	@PostMapping("/update")
	public String update(@RequestBody NghiPhepDTO np, Model model) {
		NghiPhepService.update(np);
		return "nghiphep";
	}

	@PostMapping("/add")
	public String insert(@RequestBody NghiPhepDTO np, Model model) {
		NghiPhepService.insert(np);
		return "nghiphep";
	}
}
