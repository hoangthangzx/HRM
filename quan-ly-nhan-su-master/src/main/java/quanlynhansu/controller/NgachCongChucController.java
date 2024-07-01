package quanlynhansu.controller;

import java.sql.SQLException;
import java.util.ArrayList;

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

import quanlynhansu.model.dto.BacLuongDTO;
import quanlynhansu.model.dto.DonViChucNangDTO;
import quanlynhansu.model.dto.NgachCongChucDTO;
import quanlynhansu.service.IBacLuongService;
import quanlynhansu.service.IDonViChucNangService;
import quanlynhansu.service.INgachCongChucService;
import quanlynhansu.service.NgachCongChucServiceImpl;


@Controller
@RequestMapping("/ngachCongChucController")
public class NgachCongChucController {
	@Autowired
	private INgachCongChucService ngachcongchuc;

	 @Autowired
	    private IBacLuongService BacLuongService;
	
	    
	    
	    @GetMapping("/show")
	    public String show(Model model) {
	        ArrayList<BacLuongDTO> bacluongLists = BacLuongService.getAll();
	        model.addAttribute("bacluongLists", bacluongLists);
	        return "ngachcongchuc";
	    }
	@RequestMapping(value = "/delete/{pK}", method = RequestMethod.DELETE)
	public String delete(@PathVariable Integer pK, @RequestParam(value = "version") Integer version) {
		ngachcongchuc.delete(pK, version);
		return "ngachcongchuc";
	}

	@PostMapping("/update")
	public String update(@RequestBody NgachCongChucDTO ncc, Model model)
			throws SQLException {
		ngachcongchuc.update(ncc);
		return "ngachcongchuc";
	}

    @PostMapping("/add")
    public String insert(@RequestBody NgachCongChucDTO ncc, Model model) throws SQLException {
        NgachCongChucDTO savedNgachCongChuc = ngachcongchuc.insert(ncc);
        Integer ngachCongChucPk = savedNgachCongChuc.getPk();
        Integer pkbacluong = savedNgachCongChuc.getPkbacluong();
        return "ngachcongchuc";
    }
}
