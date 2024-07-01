package quanlynhansu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import quanlynhansu.model.dto.SuKienDTO;
import quanlynhansu.service.ISuKienService;

@Controller
@RequestMapping("/sukienController")
public class SuKienController {
	@Autowired
	private ISuKienService sukien;

	@GetMapping("/show")
	public String show() {
		return "sukien";
	}
	@GetMapping("/sukien")
	public String show2() {
		return "sukiennv";
	}

	@RequestMapping(value = "/delete/{pK}", method = RequestMethod.DELETE)
	public String delete(@PathVariable Integer pK) {
		sukien.delete(pK);
		return "sukien";
	}

	@PostMapping("/update")
	public String update(@RequestBody SuKienDTO sk, Model model) {
		sukien.update(sk);
		return "sukien";
	}

	@PostMapping("/add")
	public String insert(@RequestBody SuKienDTO sk, Model model) {
		sukien.insert(sk);
		return "sukien";
	}
}
