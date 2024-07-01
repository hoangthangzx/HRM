package quanlynhansu.rest;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import quanlynhansu.model.dto.NghiPhepDTO;
import quanlynhansu.service.INghiPhepService;

@RestController
@RequestMapping("/NghiPhepService")
public class NghiPhepRestController {
	@Autowired
	private INghiPhepService NghiPhepService;

	@GetMapping("/getAll")
	public List<NghiPhepDTO> getAll() throws SQLException {
		return NghiPhepService.getAll();
	}

	@GetMapping("/getById/{pK}")
	public NghiPhepDTO getById(@PathVariable Integer pK) throws ParseException,
			SQLException {
		NghiPhepDTO np = NghiPhepService.getById(pK);
		return np;
	}
	@GetMapping("/getAllByPk/{canBo_pk}")
	public ResponseEntity<List<NghiPhepDTO>> getAllByPk(@PathVariable Integer canBo_pk) throws ParseException, SQLException {
	    List<NghiPhepDTO> npList = NghiPhepService.getAllByPk(canBo_pk);
	    if (npList != null && !npList.isEmpty()) {
	        return new ResponseEntity<>(npList, HttpStatus.OK);
	    } else {
	        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	    }
	}

}
