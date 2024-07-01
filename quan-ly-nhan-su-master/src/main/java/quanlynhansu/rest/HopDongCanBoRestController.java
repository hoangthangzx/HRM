package quanlynhansu.rest;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import quanlynhansu.model.dto.CanBoDTO;
import quanlynhansu.model.dto.HopDongCanBoDTO;
import quanlynhansu.model.dto.NghiPhepDTO;
import quanlynhansu.service.IDonViChucNangService;
import quanlynhansu.service.IHopDongCanBoService;

@RestController
@RequestMapping("/hopDongCanBoService")
public class HopDongCanBoRestController {
	@Autowired
	private IHopDongCanBoService hopdongcanbo;
	@Autowired
	private IDonViChucNangService donViChucNangService;

	@GetMapping("/getAll")
	public List<HopDongCanBoDTO> getAll() {
		return hopdongcanbo.getAll();
	}

	@GetMapping("/getById/{pK}")
	public HopDongCanBoDTO getById(@PathVariable Integer pK){
		HopDongCanBoDTO hd = hopdongcanbo.getById(pK);
		return hd;
	}
	@GetMapping("/getAllByPk/{canBoPk}")
    public ResponseEntity<List<HopDongCanBoDTO>> getAllByPk(@PathVariable Integer canBoPk) throws SQLException {
        List<HopDongCanBoDTO> npList = hopdongcanbo.getAllByPk(canBoPk);
        if (npList != null && !npList.isEmpty()) {
            return new ResponseEntity<>(npList, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
	@GetMapping("/getCanBoByDonViChucNang/{donViChucNangPk}")
	public Set<CanBoDTO> getCanBoByDonViChucNang(@PathVariable Integer donViChucNangPk) {
		return donViChucNangService.getCanBoByDonViChucNang(donViChucNangPk);
	}
}
