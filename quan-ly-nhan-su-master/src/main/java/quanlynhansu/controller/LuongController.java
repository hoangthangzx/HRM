package quanlynhansu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import quanlynhansu.model.dto.BacLuongDTO;
import quanlynhansu.service.IBacLuongService;
@Controller
@RequestMapping("/LuongController")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class LuongController {
	@Autowired
	private IBacLuongService bacluongservice;

	@GetMapping("/show")
	public String show() {
		return "bacluong";
	}

	@RequestMapping(value = "/delete/{pK}", method = RequestMethod.DELETE)
	public String delete(@PathVariable Integer pK) {
		bacluongservice.delete(pK);
		return "bacluong";
	}

	@PostMapping("/update")
	public String update(@RequestBody BacLuongDTO bl, Model model) {
		bacluongservice.update(bl);
		return "bacluong";
	}

	@PostMapping("/add")
	public String insert(@RequestBody BacLuongDTO bl, Model model) {
		bacluongservice.insert(bl);
		return "bacluong";
	}
}
