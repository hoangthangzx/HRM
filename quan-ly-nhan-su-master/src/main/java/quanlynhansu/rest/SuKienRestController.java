package quanlynhansu.rest;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import quanlynhansu.model.dto.SuKienDTO;
import quanlynhansu.service.ISuKienService;

@RestController
@RequestMapping("/sukienService")
public class SuKienRestController {
	@Autowired
	private ISuKienService sukien;

	@GetMapping("/getAll")
	public List<SuKienDTO> getAll() throws SQLException {
		return sukien.getAll();
	}

	@GetMapping("/getById/{pK}")
	public SuKienDTO getById(@PathVariable Integer pK) throws ParseException,
			SQLException {
		SuKienDTO sk = sukien.getById(pK);
		return sk;
	}
}
