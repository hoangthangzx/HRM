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
import org.springframework.web.bind.annotation.RequestParam;

import quanlynhansu.model.dto.DonViChucNangDTO;
import quanlynhansu.service.IDonViChucNangService;

@Controller
@RequestMapping("/donViChucNangController")
public class DonViChucNangController {
	@Autowired
	private IDonViChucNangService donvichucnang;

	@GetMapping("/show")
	public String show() {
		return "donvichucnang";
	}

	@RequestMapping(value = "/delete/{pK}", method = RequestMethod.DELETE)
	public String delete(@PathVariable Integer pK, @RequestParam(value = "version") Integer version) {
		donvichucnang.delete(pK, version);
		return "donvichucnang";
	}
	@PostMapping("/update")
	public String update(@RequestBody DonViChucNangDTO dv, Model model) {
		donvichucnang.update(dv);
		return "donvichucnang";
	}

	@PostMapping("/add")
	public String insert(@RequestBody DonViChucNangDTO dvcn, Model model) {
		donvichucnang.insert(dvcn);
		return "donvichucnang";
	}
}