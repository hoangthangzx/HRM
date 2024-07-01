package quanlynhansu.service;

import java.util.ArrayList;
import java.util.List;

import quanlynhansu.model.dto.NghiPhepDTO;
import quanlynhansu.model.dto.SuKienDTO;

public interface INghiPhepService {

 ArrayList<NghiPhepDTO> getAll();

	void delete(Integer id);

	NghiPhepDTO getById(Integer id);

	NghiPhepDTO update(NghiPhepDTO np);

	NghiPhepDTO insert(NghiPhepDTO np);

	   List<NghiPhepDTO> getAllByPk(Integer canBo_pk);

	

}
